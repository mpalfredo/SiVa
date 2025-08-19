from lxml import etree


class XMLProcessor:
    """
    Clase encargada del procesamiento de archivos XML para declaraciones anuales:
    1. Parsear documentos XML
    2. Aplicar transformaciones XSLT sobre XML.
    """

    def __init__(self, xml_path: str, transformer):
        self.xml_path = xml_path
        self.xml_doc = None
        self.transformer = transformer

    def parse_xml(self):
        """Parsea el archivo XML y lo carga como árbol DOM en memoria."""
        with open(self.xml_path, "rb") as f:
            self.xml_doc = etree.parse(f)

    def transform_to_json_str(self) -> str:
        """
        Aplica el XSLT al XML cargado y devuelve el resultado como cadena JSON.
        IMPORTANTE: El XSLT produce texto plano, no un objeto JSON real.
        """
        if not self.xml_doc or not self.transformer:
            raise RuntimeError("XML o XSLT no han sido cargados")
        result_tree = self.transformer(self.xml_doc)
        return str(result_tree)

class XSLTProcessor:
    """
    Clase encargada del procesamiento de archivos XSLT para declaraciones anuales.
    """

    def __init__(self, xslt_path: str):
        self.xslt_path = xslt_path
        self.transformer = None

    def parse_xslt(self):
        """Parsea y compila el archivo XSLT."""

        with open(self.xslt_path, "rb") as f:
            xslt_doc = etree.parse(f)
        self.transformer = etree.XSLT(xslt_doc)
        return self.transformer