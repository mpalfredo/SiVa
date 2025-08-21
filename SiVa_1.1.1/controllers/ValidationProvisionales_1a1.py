import json
import os

from modules.JSONCleaner import JSONCleaner
from modules.JSONsComparator import normalizar_enteros, normalizar_fechas, JSONsComparator
from modules.XMLXSLTProcessor import XMLXSLTProcessor
from modules.JSONSchemaValidator import JSONSchemaValidator

from common.downloads_path import get_downloads_folder as downloads_path



class ValidacionProvisionales:
    """
    Clase que orquesta todo el flujo:
    XML → XSLT → JSON → Validación → Comparación JSON original.

    1. Carga y parsea XML + XSLT.
    2. Aplica la transformación.
    3. Limpia y parsea el JSON resultante.
    4. Sustituye en el JSON original la sección generada por XSLT.
    5. Valida el JSON generado contra el esquema.
    6. Realiza la comparación entre ambos archivos JSON.
    """

    def __init__(self, xml_path: str,
                 json_path: str,
                 output_path: str,
                 xslt_dir_path: str = r"archivos\regimenes",
                 schema_dir_path: str = r"archivos\esquemas"):
        """

        :param xml_path: Ruta al archivo XML.
        :param xslt_dir_path: Ruta al directorio donde se encuentran los archivos XSLT.
        :param json_path: Ruta al archivo JSON.
        :param schema_dir_path: Ruta al directorio donde se encuentran los archivos JSON Schema.
        :param output_path: Ruta al archivo directorio donde se guardarán los archivos resultantes.
        """
        self.xml_path = xml_path
        self.xslt_dir_path = xslt_dir_path
        self.json_path = json_path
        self.schema_dir_path = schema_dir_path
        self.output_path = output_path

    def validar(self):
        # 1. Parseo de XML yt XSLT
        processor = XMLXSLTProcessor(self.xml_path, self.xslt_dir_path)
        processor.parse_xml()
        processor.parse_xslt()

        # 2. Transformación XML → JSON (texto plano)
        json_str = processor.transform_to_json_str()

        # 3. Limpieza del JSON (texto → texto limpio)
        json_str_clean = JSONCleaner.clean(json_str)

        # 4. Parseo a objeto Python (dict/list)
        try:
            admin_decl = json.loads(json_str_clean)
        except json.JSONDecodeError as e:
            raise ValueError(f"Error al parsear JSON generado por XSLT: {e}")

        # 5. Cargar JSON original
        with open(self.json_path, "r", encoding="utf-8") as f:
            json_completado = json.load(f)

        # 6. Sustitución de sección AdminDeclaracion
        # --- Reemplazar sección AdminDeclaracion respetando el esquema ---
        json_completado["AdminDeclaracion"] = []  # Siempre una lista

        # Caso: XSLT devuelve directamente el objeto sin la clave especificada
        json_completado["AdminDeclaracion"].append(admin_decl)
        print("Archivo JSON generado correctamente.")

        # 7. Normalización de enteros y Validación contra esquema
        # ------------ OPCIONAL: Solo permite descartar falsos positivos ------------
        json_normalized = normalizar_enteros(json_completado)
        json_normalized = normalizar_fechas(json_normalized)

        validador = JSONSchemaValidator(self.schema_dir_path,json_normalized)
        validador.validate_json()

        # 8. Guardar JSON final validado

        # Obtener el nombre del archivo sin ruta ni extensión
        nombre_json_original = os.path.splitext(os.path.basename(self.json_path))[0]

        # El JSON generado se guardará en la misma carpeta donde se suba el XLSX resultante
        salida_json = os.path.join(self.output_path, f"{nombre_json_original}")
        os.makedirs(salida_json, exist_ok=True)
        salida_completa_json = os.path.join(salida_json, f"{nombre_json_original}_JSON_generado.json")

        with open(salida_completa_json, "w", encoding="utf-8") as f:
            json.dump(json_normalized, f, ensure_ascii=False, indent=4)

        # 9. Generar comparación en Excel

        with open(self.json_path, "r", encoding="utf-8") as f:
            json_original = json.load(f)

        salida_completa_xlsx = os.path.join(salida_json, f"{nombre_json_original}.xlsx")

        JSONsComparator.comparar_json_a_excel(original=json_original,
                                   generado=json_normalized,
                                   ruta_salida=salida_completa_xlsx)


if __name__ == "__main__":

    # --- Configuración de rutas: Regímenes y esquemas ---
    # xslt_dir_path   = r"archivos\regimenes"
    # schema_dir_path = r"archivos\esquemas"

    # --- Configuración de rutas: XML y JSON ---
    xml_path  = r"archivos\por_validar\Provisionales\all\EUBE561117GE4.250080000008\EUBE561117GE4.38.2024.23d3acac-0358-4528-9748-8286b15ac2cb.xml"
    json_path = r"archivos\por_validar\Provisionales\all\EUBE561117GE4.250080000008\EUBE561117GE4.250080000008.json"

    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output_prueba_formato")
    os.makedirs(output_path, exist_ok=True)

    # --- Ejecución del flujo completo ---
    pipeline = ValidacionProvisionales(xml_path, json_path, output_path)
    pipeline.validar()
