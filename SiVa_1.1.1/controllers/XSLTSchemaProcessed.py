from modules.XMLXSLTProcessorV2 import XSLTProcessor
from modules.JSONFunctions import JSONFunctions


class XSLTProcessed:
    """
    Clase que permite cargar los archivos XSLT procesados para Declaraciones Anuales de Personas
    Morales y Físicas V2.
    """
    # Personas Físicas V2
    xslt_path_DAPFV2   = r"archivos\regimenes\FisicasV2Json.DecAnuPF.xslt"
    transformer_DAPFV2 = XSLTProcessor.parse_xslt(xslt_path_DAPFV2, "F")

    # Personas Morales V2
    xslt_path_DAPMV2   = r"archivos\regimenes\MoralesV2Json.DecAnuPMv2.xslt"
    transformer_DAPMV2 = XSLTProcessor.parse_xslt(xslt_path_DAPMV2, "M")

class SchemaProcessed:
    """
    Clase que permite cargar los archivos JSON Schema para Declaraciones Anuales de Personas Morales
    y Física V2.
    """
    # Personas Físicas V2
    schema_path_DAPFV2 = r"archivos\esquemas\FisicasV2Json.DecAnuPF_2022_v0.2.22.json"
    schema_DAPFV2      = JSONFunctions.load_json(schema_path_DAPFV2)

    # Personas Morales V2
    schema_path_DAPMV2 = r"archivos\esquemas\esquema_DAPM_F18v2_RESICO_0.0.2.19.json"
    schema_DAPMV2      = JSONFunctions.load_json(schema_path_DAPMV2)