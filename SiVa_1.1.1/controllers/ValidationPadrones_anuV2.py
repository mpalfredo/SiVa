import os
import time
from datetime import timedelta

from modules.XMLXSLTProcessorV2 import XSLTProcessor
from modules.JSONFunctions import JSONFunctions

from common.downloads_path import get_downloads_folder as downloads_path
from controllers.ValidationAnuales_1a1 import ValidacionAnualesV2
from controllers.XSLTSchemaProcessed import XSLTProcessed, SchemaProcessed


class ValidationPadrones_anuV2:
    """
    Clase que orquesta el flujo completo para carpetas con archivos XML y JSON.

    PENDIENTE: Faltan archivos XML nativos de DAPFV2.

    """

    def __init__(self, tipo_persona: str, xml_json_dir_path: str, output_path: str):
        """
        Constructor.
        :param tipo_persona: Indica si los contribuyentes son personas morales ("M") o personas físicas ("F").
        :param xml_json_dir_path: Path al directorio con subcarpetas que contengan los archivos de interés (duplas XML-JSON).
        :param output_path: Path al directorio de salida.
        """
        if not isinstance(tipo_persona, str):
            raise TypeError("El tipo de persona debe ser una cadena (str)")

            # normalizamos a mayúscula
        tipo_persona = tipo_persona.upper()

        if tipo_persona not in ("F", "M"):
            raise ValueError("El tipo de persona debe ser 'F' o 'M' (mayúscula o minúscula)")

        self.tipo_persona = tipo_persona

        # Se cargan los archivos XSLT y JSON Schema correspondientes para cada tipo de persona.
        if self.tipo_persona == "M":
            transformer = XSLTProcessed.transformer_DAPMV2
            schema      = SchemaProcessed.schema_DAPMV2 # Asegurarse de que la versión sea la más actualizada.
        else: # Caso: tipo_persona == "F"
            transformer = XSLTProcessed.transformer_DAPFV2
            schema      = SchemaProcessed.schema_DAPFV2 # Asegurarse de que la versión sea la más actualizada.

        self.transformer = transformer
        self.schema = schema
        self.xml_json_dir_path = xml_json_dir_path
        self.output_path = output_path

    def run(self):
        """
        Función que accede a cada subcarpeta del directorio especificado que contiene archivos XML y JSON
        correspondientes a una única declaración.

        Ejemplo:

        carpeta_base # -> Se da como parámetro el path a este directorio (Ejemplo: r"ruta/al/directorio/carpeta_base")
            |--- Declaracion_persona1 # -> Subcarpeta con los archivos de interés concernientes a la misma declaración
                    |--- Declaracion_persona1.json
                    |--- Declaracion_persona1.xml
            |--- Declaracion_persona2
                    |--- Declaracion_persona2.json
                    |--- Declaracion_persona2.xml
            |--- Declaracion_persona3
                    |--- Declaracion_persona3.json
                    |--- Declaracion_persona3.xml
            |--- [...] # Más subcarpetas

        """
        # Recorremos cada subcarpeta
        for subcarpeta in os.listdir(self.xml_json_dir_path):
            sub_dir = os.path.join(self.xml_json_dir_path, subcarpeta)

            # Procesar solo si es una carpeta
            if os.path.isdir(sub_dir):
                path_json = None
                path_xml = None

                # Buscar los archivos .json y .xml dentro de la subcarpeta
                for file in os.listdir(sub_dir):
                    if file.lower().endswith(".json"):
                        path_json = os.path.join(sub_dir, file)
                    elif file.lower().endswith(".xml"):
                        path_xml = os.path.join(sub_dir, file)

                # Si encontramos ambos, procesamos
                if path_json and path_xml:
                    print(f"Procesando: {subcarpeta}")
                    validacion = ValidacionAnualesV2(path_xml, path_json, output_path, self.transformer, self.schema)
                    validacion.validar()

    # def run2(self):
        """
        Esta función accede a todos los archivos '.json' y '.xml' concentrados en la subcarpeta "JSON" y
        "XML", respectivamente. Encuentra los pares que se corresponden y ejecuta el proceso de validación sobre ellos.
        """


if __name__ == "__main__":

    # --- Configuración de tipo de persona ---
    tipo_persona = "M"

    # --- Configuración de rutas: XML y JSON ---
    xml_json_dir_path  = r"archivos/por_validar/Anuales/MoralesV2"

    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output_DAPMV2_padrones")
    os.makedirs(output_path, exist_ok=True)

    # --- Ejecución del flujo completo ---
    pipeline = ValidationPadrones_anuV2(tipo_persona, xml_json_dir_path, output_path)

    inicio = time.time()
    pipeline.run()
    duracion = timedelta(seconds=(time.time() - inicio))
    print(f"Tiempo de ejecución: {duracion}")