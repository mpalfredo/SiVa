import json
import os

from modules.JSONCleaner import JSONCleaner
from modules.JSONsComparator import JSONsComparator, normalizar_enteros
from modules.XMLXSLTProcessorV2 import XMLProcessor, XSLTProcessor
from modules.JSONSchemaValidatorV2 import JSONFunctions

from common.downloads_path import get_downloads_folder as downloads_path


class ValidacionAnuales:
    """
    Clase que orquesta todo el flujo para Declaraciones Anuales de Personas Morales V2:
    XML → XSLT → JSON → Validación → Comparación JSON original.

    1. Carga y parsea XML + XSLT.
    2. Aplica la transformación.
    3. Limpia y parsea el JSON resultante.
    4. Sustituye en el JSON original la sección generada por XSLT.
    5. Valida el JSON generado contra el esquema.
    6. Realiza la comparación entre ambos archivos JSON.
    """

    def __init__(self, xml_path: str, json_path: str, output_path: str, transformer, schema):
        """

        :param xml_path: Ruta al archivo XML.
        :param json_path: Ruta al archivo JSON.
        :param output_path: Ruta al archivo directorio donde se guardarán los archivos resultantes.
        """
        self.xml_path = xml_path
        self.json_path = json_path
        self.output_path = output_path
        self.transformer = transformer
        self.schema = schema

    def validar(self):
        # 1. Parseo de XML y XSLT
        xml_doc = XMLProcessor.parse_xml(self.xml_path)

        # 2. Transformación XML → JSON (texto plano)
        json_str = XMLProcessor.transform_to_json_str(xml_doc, transformer)

        # 3. Limpieza del JSON (texto → texto limpio)
        json_str_clean = JSONCleaner.clean(json_str)

        # 4. Parseo a objeto Python (dict/list)
        try:
            json_generado = json.loads(json_str_clean)
            print("Archivo JSON generado correctamente.")
        except json.JSONDecodeError as e:
            raise ValueError(f"Error al parsear JSON generado por XSLT: {e}")

        # 5. Normalización de enteros y validación contra esquema
        json_normalized = normalizar_enteros(json_generado)
        JSONFunctions.validate_json(self.schema,json_normalized)

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

        # Cargar JSON original

        json_original = JSONFunctions.load_json(self.json_path)

        salida_completa_xlsx = os.path.join(salida_json, f"{nombre_json_original}.xlsx")

        JSONsComparator.comparar_json_a_excel(original=json_original,
                                   generado=json_normalized,
                                   ruta_salida=salida_completa_xlsx)


if __name__ == "__main__":

    # --- Configuración de rutas: Regímenes y esquemas ---
    xslt_path   = r"archivos\regimenes\FisicasV2Json.DecAnuPF.xslt"
    schema_path = r"archivos\esquemas\FisicasV2Json.DecAnuPF_2022_v0.2.22.json"

    # --- Configuración de rutas: XML y JSON ---
    xml_path  = r"archivos\por_validar\FísicasV2\20220425.SOCR710403TZ6.220080160506\20220425.SOCR710403TZ6.220080160506.xml"
    json_path = r"archivos\por_validar\FísicasV2\20220425.SOCR710403TZ6.220080160506\20220425.SOCR710403TZ6.220080160506.json"

    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output_DAPF")
    os.makedirs(output_path, exist_ok=True)

    # --- Ejecución del flujo completo ---
    transformer = XSLTProcessor.parse_xslt(xslt_path)
    validator = JSONFunctions.load_json(schema_path)

    pipeline = ValidacionAnuales(xml_path, json_path, output_path, transformer, validator)
    pipeline.validar()