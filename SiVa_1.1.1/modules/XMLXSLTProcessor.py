from lxml import etree
import os

from modules.REGIdentificator import RegimenID

class XMLXSLTProcessor:
    """
    Clase encargada del procesamiento de archivos XML Y XSLT para Declaraciones Provisionales:
    1. Parsear documentos XML y XSLT (procesa únicamente el archivo correspondiente).
    2. Aplicar transformaciones XSLT sobre XML.
    3. Retornar el resultado como texto plano (JSON en este caso).

    A NIVEL TÉCNICO:
    ----------------
    - `lxml.etree.parse()` utiliza la librería C `libxml2` para leer el XML/XSLT,
      construyendo un árbol DOM en memoria.
    - `etree.XSLT` compila el XSLT en un plan de ejecución usando `libxslt`.
    - `transform(xml_doc)` recorre el XML aplicando las reglas de XSLT,
      produciendo un documento de salida (texto JSON en este caso).
    """

    def __init__(self, xml_path: str, xslt_dir_path: str):
        """

        :param xml_path: Ruta al archivo XML que se desea procesarse.
        :param xslt_dir_path: Ruta al directorio que contiene los archivos XSLT.
        """
        self.xml_path = xml_path
        self.xslt_dir_path = xslt_dir_path
        self.xslt_path = None
        self.xml_doc = None
        self.transformer = None

    def parse_xml(self):
        """Parsea el archivo XML y lo carga como árbol DOM en memoria."""
        with open(self.xml_path, "rb") as f:
            self.xml_doc = etree.parse(f)

    def get_xslt_path(self):
        """obtiene la ruta al archivo XSLT del regimen fiscal correspondiente a la declaración."""

        # Primero, obtiene el valor de la etiqueta <concepto> del XML.
        regimen_id = RegimenID(self.xml_doc.getroot())
        concepto = regimen_id.get_concept()

        if not concepto:
            print("Error al buscar el concepto en el XML")
            return ""

        try:
            for filename in os.listdir(self.xslt_dir_path):
                if concepto in filename and filename.lower().endswith(".xslt"):
                    return os.path.join(self.xslt_dir_path, filename)
            return ""  # No encontrado
        except Exception as e:
            print(f"Error buscando archivo XSLT en el directorio: {e}")
            return ""

    def parse_xslt(self):
        """Parsea y compila el archivo XSLT."""

        self.xslt_path = self.get_xslt_path()

        with open(self.xslt_path, "rb") as f:
            xslt_doc = etree.parse(f)
        self.transformer = etree.XSLT(xslt_doc)

    def transform_to_json_str(self) -> str:
        """
        Aplica el XSLT al XML cargado y devuelve el resultado como cadena JSON.
        IMPORTANTE: El XSLT produce texto plano, no un objeto JSON real.
        """
        if not self.xml_doc or not self.transformer:
            raise RuntimeError("XML o XSLT no han sido cargados")
        result_tree = self.transformer(self.xml_doc)
        return str(result_tree)
