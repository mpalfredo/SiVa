import os
import time
from datetime import timedelta

from common.downloads_path import get_downloads_folder as downloads_path
from controllers.ValidationProvisionales_1a1 import ValidacionProvisionales


class ValidationPadrones_prov:
    """
    Clase que orquesta todo el flujo para carpetas que contienen subcarpetas con archivos XML y JSON.
    """

    def __init__(self, xml_json_dir_path: str,
                 output_path: str,
                 xslt_dir_path: str = r"archivos\regimenes",
                 schema_dir_path: str = r"archivos\esquemas"):
        """
        :param xml_json_dir_path: Path al directorio con subcarpetas que contengan los archivos de interés (duplas XML-JSON).
        :param xslt_dir_path: Path al directorio con archivos XSLT.
        :param schema_dir_path: Path al directorio con archivos JSON Schema.
        :param output_path: Path al directorio de salida.
        """
        self.xml_json_dir_path = xml_json_dir_path
        self.xslt_dir_path = xslt_dir_path
        self.schema_dir_path = schema_dir_path
        self.output_path = output_path

    def run(self):
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
                    validacion = ValidacionProvisionales(path_xml, path_json, self.output_path)
                    validacion.validar()


if __name__ == "__main__":

    # --- Configuración de rutas: Regímenes y esquemas ---
    # xslt_dir_path   = r"archivos\regimenes"
    # schema_dir_path = r"archivos\esquemas"

    # --- Configuración de rutas: XML y JSON ---
    xml_json_dir_path  = r"archivos\por_validar\Prueba_19-08-25"

    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output_padrones_prov")
    os.makedirs(output_path, exist_ok=True)

    # --- Ejecución del flujo completo ---
    pipeline = ValidationPadrones_prov(xml_json_dir_path, output_path)

    inicio = time.time()
    pipeline.run()
    duracion = timedelta(seconds=(time.time() - inicio))
    print(f"Tiempo de ejecución: {duracion}")