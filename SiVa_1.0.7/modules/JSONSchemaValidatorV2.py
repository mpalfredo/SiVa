import json
from jsonschema import validate, ValidationError


class JSONSchemaValidator:
    """
    Clase encargada de instanciar el JSON Schema como objeto y validar un JSON contra el esquema.

    """

    @staticmethod
    def load_json(json_path: str):
        with open(json_path, "r", encoding="utf-8") as f:
            json_file = json.load(f)
        return json_file

    @staticmethod
    def validate_json(schema: dict, json_file: dict):
        try:
            validate(instance=json_file, schema=schema)
            print("El JSON cumple con el esquema.")
        except ValidationError as e:
            print(f"Error de validación: {e.message}")