import json
import os
from jsonschema import validate, ValidationError

from modules.JSONSchemaIdentificator import JSONSchemaID


class JSONSchemaValidator:
    """
    Clase encargada de retornar la ruta de un archivo JSON Schema y validar un JSON
    contra el esquema de la versión correspondiente.

    Esta clase se emplea directamente en el proceso de validación (controllers.ValidationProvisionales_1a1)
    para no especificar explícitamente el archivo JSON Schema de la versión correspondiente a cada
    declaración.

    PROCESO INTERNO:
    ----------------
    - Recorre el JSON como árbol.
    - Para cada nodo, verifica las reglas definidas en el esquema.
    - En caso de error, lanza una excepción `ValidationError` indicando:
      * valor inválido
      * restricción violada
      * ubicación exacta en el JSON
    """

    def __init__(self, json_schema_dir_path: str, json_file: dict):
        """
        :param json_schema_dir_path: Ruta al directorio donde se encuentran las distintas versiones del JSON Schema.
        :param json_file: Objeto JSON que va a validarse contra el esquema.
        """
        self.json_schema_dir_path = json_schema_dir_path
        self.json_file = json_file
        self.schema_path = None

    def get_json_schema_path(self):
        version = JSONSchemaID().get_version(self.json_file)
        if not version:
            print("No se encontró 'esquemajsondwh' en el JSON.")
            return None

        try:
            for fname in os.listdir(self.json_schema_dir_path):
                if version in fname and fname.endswith(".json"):
                    self.schema_path = os.path.join(self.json_schema_dir_path, fname)
                    return self.schema_path

            # si no hay archivo, no rompe el flujo
            print(f"No se encontró un esquema con versión '{version}' en {self.json_schema_dir_path}")
            return None

        except FileNotFoundError:
            print(f"Carpeta de esquemas no encontrada: {self.json_schema_dir_path}")
            return None

    def validate_json(self):
        schema_path = self.get_json_schema_path()
        if not schema_path:
            print("Validación omitida.")
            return

        with open(schema_path, "r", encoding="utf-8") as f:
            schema = json.load(f)

        try:
            validate(instance=self.json_file, schema=schema)
            print("El JSON cumple con el esquema.")
        except ValidationError as e:
            print(f"Error de validación: {e.message}")