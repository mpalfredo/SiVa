import re


class JSONCleaner:
    """
    Clase para limpiar y normalizar cadenas JSON producidas por XSLT
    antes de parsearlas a objetos Python.

    OBJETIVO:
    ---------
    El XSLT genera texto plano que puede contener:
    - Comas extra
    - Claves sin comillas
    - Comillas simples
    - Booleanos estilo Python (True/False/None)
    """

    @staticmethod
    def clean(json_str: str) -> str:
        """Aplica transformaciones de texto para garantizar que el JSON sea válido."""
        # Quitar comas extra antes de '}' o ']'
        json_str = re.sub(r",\s*([}\]])", r"\1", json_str)
        # Reemplazar comillas simples por dobles
        json_str = json_str.replace("'", '"')
        # Normalizar valores booleanos y null
        json_str = re.sub(r"\bTrue\b", "true", json_str)
        json_str = re.sub(r"\bFalse\b", "false", json_str)
        json_str = re.sub(r"\bNone\b", "null", json_str)
        # Forzar que las claves tengan comillas dobles
        json_str = re.sub(r'([{,]\s*)([A-Za-z0-9_]+)\s*:', r'\1"\2":', json_str)
        # Quitar comentarios tipo // y espacios que los rodean
        json_str = re.sub(r"//.*", "", json_str)
        return json_str