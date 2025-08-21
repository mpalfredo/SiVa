

class JSONSchemaID:
    """
    Clase que construye un JSON Schema Identificator:

    Permite identificar a qué versión del esquema corresponde el JSON.

    """
    @staticmethod
    def get_version(json_file: dict) -> str | None:
        """
        Devuelve el valor asignado a la clave "esquemajsondwh", si existe.
        """
        try:
            identi = json_file.get("IdentiDecla", {})
            version = identi.get("esquemajsondwh")
            if version is not None:
                return str(version).strip()
            return None
        except Exception as e:
            print(f"Error al obtener 'esquemajsondwh': {e}")
            return None