import json
import os

from modules.JSONCleaner import JSONCleaner
from modules.JSONsComparator import normalizar_enteros, normalizar_fechas, JSONsComparator
from modules.XMLXSLTProcessorV2 import XMLProcessor, XSLTProcessor
from modules.JSONFunctions import JSONFunctions

from common.downloads_path import get_downloads_folder as downloads_path


class ValidacionAnualesV2:
    """
    Clase que orquesta el flujo completo para Declaraciones Anuales de Personas Morales y Físicas
    V2: XML → XSLT → JSON generado → Validación contra Schema → Comparación JSON original.

    NOTA IMPORTANTE:
    Dado que para este tipo de declaraciones y formato se cuenta con una única versión de Schema
    y un único archivo XSLT que contempla todos los regímenes, dichos archivos se procesan de
    manera independiente y se solicitan como parámetros una vez ya procesados.

    Además, el XSLT para declaraciones anuales construye todas las entidades (tablas) que se
    exhiben en el JSON original, y en este caso no es necesario reemplazar secciones.

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
        :param output_path: Ruta al directorio donde se guardarán los archivos resultantes.
        :param transformer: Objeto XSLT previamente procesado (XSLTProcessor.parse_xslt()).
        :param schema: Objeto JSON Schema previamente cargado (JSONFunctions.load_json()).
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
        json_str = XMLProcessor.transform_to_json_str(xml_doc, self.transformer)

        # 3. Limpieza del JSON (texto → texto limpio)
        json_str_clean = JSONCleaner.clean(json_str)

        # 4. Parseo a objeto Python (dict/list)
        try:
            json_generado = json.loads(json_str_clean)
            print("Archivo JSON generado correctamente.")
        except json.JSONDecodeError as e:
            raise ValueError(f"Error al parsear JSON generado por XSLT: {e}")

        # 5. Normalización de enteros y validación contra esquema
        # ------------ OPCIONAL: Solo permite descartar falsos positivos ------------
        json_normalized = normalizar_enteros(json_generado)
        json_normalized = normalizar_fechas(json_normalized)

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
    xslt_path   = r"archivos\regimenes\MoralesV2Json.DecAnuPMv2.xslt"
    schema_path = r"archivos\esquemas\esquema_DAPM_F18v2_RESICO_0.0.2.19.json"

    # --- Configuración de rutas: XML y JSON ---
    xml_path  = r"archivos/por_validar/Anuales/MoralesV2/GMD190201J86.200050114875-159/20200331.GMD190201J86.200050114875_0159_0192.xml"
    json_path = r"archivos/por_validar/Anuales/MoralesV2/GMD190201J86.200050114875-159/20200331.GMD190201J86.200050114875.json"

    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output_DAPMV2_unitaria")
    os.makedirs(output_path, exist_ok=True)

    # --- Ejecución del flujo completo ---
    transformer = XSLTProcessor.parse_xslt(xslt_path, "M")
    validator = JSONFunctions.load_json(schema_path)

    pipeline = ValidacionAnualesV2(xml_path, json_path, output_path, transformer, validator)
    pipeline.validar()