import os
from lxml import etree


class XMLFormat:

    @staticmethod
    def pretty_format_xml(xml_dir_path: str):
        """
        Reemplaza todos los archivos .xml en un directorio con su versión formateada (pretty print).

        Args:
            xml_dir_path (str): Ruta del directorio donde están los archivos XML.
        """
        for filename in os.listdir(xml_dir_path):
            if filename.lower().endswith(".xml"):  # solo procesa XML
                file_path = os.path.join(xml_dir_path, filename)
                try:
                    parser = etree.XMLParser(remove_blank_text=True)
                    tree = etree.parse(file_path, parser)

                    # Generar versión formateada
                    xml_pretty = etree.tostring(
                        tree,
                        pretty_print=True,
                        encoding="utf-8",
                        xml_declaration=True
                    )

                    # Sobrescribir el archivo original
                    with open(file_path, "wb") as f:
                        f.write(xml_pretty)

                    print(f"Formateado: {filename}")

                except Exception as e:
                    print(f"Error al procesar {filename}: {e}")


if __name__ == "__main__":
    # Ejemplo de uso
    xml_dir_path = r"C:\Users\valeria.cano\Documents\SiVa\SiVa_1.1.1\controllers\archivos\por_validar\Anuales\MoralesV2_originales\XML_Nativo"
    XMLFormat.pretty_format_xml(xml_dir_path)