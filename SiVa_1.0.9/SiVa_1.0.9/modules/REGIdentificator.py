import xml.etree.ElementTree as ET

class RegimenID:
    """
    Clase que construye un Regimen Identificator. Esta clase emplea indirectamente en el proceso de
    validación de declaraciones provisionales (controllers.ValidationProvisionales_1a1).

    Permite identificar a qué régimen fiscal corresponde la declaración.
    """
    def __init__(self, xml_root: ET.Element):
        self.xml_root = xml_root

    def get_concept(self):
        """
        Devuelve el valor dentro de la etiqueta <concepto>, si existe.
        """
        try:
            concepto_element = self.xml_root.find(".//concepto")
            if concepto_element is not None and concepto_element.text is not None:
                return concepto_element.text.strip()
            else:
                return None
        except Exception as e:
            print(f"Error al buscar el concepto en el XML: {e}")
            return None