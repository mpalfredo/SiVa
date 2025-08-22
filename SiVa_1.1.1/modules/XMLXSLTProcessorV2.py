from lxml import etree

class XMLProcessor:
    """
    Clase encargada del procesamiento de archivos XML de Declaraciones Anuales:
    1. Parsear documentos XML
    2. Aplicar transformaciones XSLT sobre XML.
    """

    @staticmethod
    def parse_xml(xml_path: str):
        """Parsea el archivo XML y lo carga como árbol DOM en memoria."""
        with open(xml_path, "rb") as f:
            xml_doc = etree.parse(f)
        return xml_doc

    @staticmethod
    def transform_to_json_str(xml_doc, transformer) -> str:
        """
        Aplica el XSLT al XML cargado y devuelve el resultado como cadena JSON.
        IMPORTANTE: El XSLT produce texto plano, no un objeto JSON real.
        """
        result_tree = transformer(xml_doc)
        return str(result_tree)


class XSLTProcessor:
    """
    Clase encargada del procesamiento de archivos XSLT de Declaraciones Anuales.
    """

    @staticmethod
    def _register_extensions():
        """
        Registra funciones de extensión personalizadas usadas dentro de las hojas XSLT (namespace user).
        """
        def reemplazar(context, txt):
            if txt is None:
                return ""
            if isinstance(txt, list):  # si es lista de nodos
                txt = "".join([str(t) for t in txt])
            return txt.replace("\\", "\\\\").replace("\"", "\\\"").replace("&#x2F;", "/")

        ns = etree.FunctionNamespace("urn:my-scripts")
        ns['reemplazar'] = reemplazar

    @staticmethod
    def parse_xslt(xslt_path: str):
        """Parsea y compila el archivo XSLT."""
        # Registrar extensiones antes de compilar
        XSLTProcessor._register_extensions() # -> OPCIONAL: Caso en que el XSLT incluye scripts C# con funciones como "reemplazar".

        with open(xslt_path, "rb") as f:
            xslt_doc = etree.parse(f)
        transformer = etree.XSLT(xslt_doc)
        return transformer