import os
import json


class JSONformato:

    @staticmethod
    def pretty_format(json_dir_path: str, indent: int = 4):
        """
        Reemplaza todos los archivos .json en un directorio con su versión formateada (pretty print).

        Args:
            json_dir_path (str): Ruta del directorio donde están los archivos JSON.
            indent (int): Número de espacios para la indentación (default=4).
        """
        for filename in os.listdir(json_dir_path):
            if filename.lower().endswith(".json"):  # solo procesa JSON
                file_path = os.path.join(json_dir_path, filename)
                try:
                    with open(file_path, "r", encoding="utf-8") as json_file:
                        diccionario = json.load(json_file)

                    # Sobrescribir el mismo archivo con formato bonito
                    with open(file_path, "w", encoding="utf-8") as f:
                        json.dump(diccionario, f, indent=indent, ensure_ascii=False)

                    print(f"Formateado: {filename}")

                except Exception as e:
                    print(f"Error al procesar {filename}: {e}")


if __name__ == "__main__":

    json_dir_path = r"C:\Users\valeria.cano\Documents\ProcesoValidacionXML-JSON_VCS\SiVa_1.0.5\controllers\archivos\por_validar\MoralesV2\JSON"
    JSONformato().pretty_format(json_dir_path)