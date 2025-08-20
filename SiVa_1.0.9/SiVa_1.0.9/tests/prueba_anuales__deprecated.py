import json
import os
from lxml import etree

from modules.JSONCleaner import JSONCleaner
from modules.JSONsComparator import JSONsComparator, normalizar_enteros
from modules.JSONSchemaValidatorV2 import JSONSchemaValidator

from common.downloads_path import get_downloads_folder as downloads_path



# --- Configuración de rutas: Regímenes y esquemas ---
xslt_path = r"/controllers/archivos/regimenes/FisicasV2Json.DecAnuPF.xslt"
schema_path = r"/controllers/archivos/esquemas/FisicasV2Json.DecAnuPF_2022_v0.2.22.json"

# --- Configuración de rutas: XML y JSON ---
xml_path = r"/controllers/archivos/por_validar/FisicasV2/20220425.SOCR710403TZ6.220080160506/20220425.SOCR710403TZ6.220080160506.xml"
json_path = r"/controllers/archivos/por_validar/FisicasV2/20220425.SOCR710403TZ6.220080160506/20220425.SOCR710403TZ6.220080160506.json"

# --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
output_path = os.path.join(downloads_path(), "output_DAPF")
os.makedirs(output_path, exist_ok=True)

# 1. Parseo de XML yt XSLT
with open(xml_path, "rb") as f:
    xml_doc = etree.parse(f)

with open(xslt_path, "rb") as f:
    xslt_doc = etree.parse(f)
transformer = etree.XSLT(xslt_doc)

# 2. Transformación XML → JSON (texto plano)
json_str = str(transformer(xml_doc))

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
schema = JSONSchemaValidator.load_json(schema_path)
JSONSchemaValidator.validate_json(schema,json_normalized)

# 8. Guardar JSON final validado

# Obtener el nombre del archivo sin ruta ni extensión
nombre_json_original = os.path.splitext(os.path.basename(json_path))[0]

# El JSON generado se guardará en la misma carpeta donde se suba el XLSX resultante
salida_json = os.path.join(output_path, f"{nombre_json_original}")
os.makedirs(salida_json, exist_ok=True)
salida_completa_json = os.path.join(salida_json, f"{nombre_json_original}_JSON_generado.json")

with open(salida_completa_json, "w", encoding="utf-8") as f:
    json.dump(json_normalized, f, ensure_ascii=False, indent=4)

# 9. Generar comparación en Excel

# Cargar JSON original

json_original = JSONSchemaValidator.load_json(json_path)

salida_completa_xlsx = os.path.join(salida_json, f"{nombre_json_original}.xlsx")

JSONsComparator.comparar_json_a_excel(original=json_original,
                           generado=json_normalized,
                           ruta_salida=salida_completa_xlsx)


