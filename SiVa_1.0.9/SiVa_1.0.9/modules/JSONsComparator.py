from openpyxl import Workbook


def normalizar_enteros(diccionario: dict):
    """
    Lo utilizamos para evitar falsos positivos al momento de desglosar diferencias en el proceso
    de comparación entre el JSON generado y el JSON original.

    Recorre recursivamente un dict/list y convierte a int
    todos los floats que son realmente enteros.

    Por ejemplo: 34567456789.0 -> 34567456789
    """
    if isinstance(diccionario, dict):
        return {k: normalizar_enteros(v) for k, v in diccionario.items()}
    elif isinstance(diccionario, list):
        return [normalizar_enteros(v) for v in diccionario]
    elif isinstance(diccionario, float) and diccionario.is_integer():
        return int(diccionario)
    else:
        return diccionario


class JSONsComparator:
    """
    Clase encargada de comparar dos JSON y anexar sus diferencias en un archivo XLSX.
    """

    @staticmethod
    def comparar_json_a_excel(original: dict, generado: dict, ruta_salida: str, list_key_map: dict | None = None):
        """
        Compara dos JSON a nivel de hoja (clave-valor) y exporta diferencias a Excel.
        Permite desglosar campo a campo en la salida de diferencias.

        Params:
            original: JSON original.
            generado: JSON generado.
            ruta_salida: path del .xlsx de salida.
            list_key_map: mapeo opcional {ruta_lista: 'clave_del_item'} para alinear listas de dicts por clave.
                          Ej: {'AdminDeclaracion/0/Concepto/IngresosRCPF/DetIngresosMesesAnt/DetIngresosMesesAnteriores': 'mes'}
        """
        if list_key_map is None:
            list_key_map = {}

        def is_scalar(x):
            return not isinstance(x, (dict, list))

        def flatten(obj, base_path=""):
            """
            Devuelve {ruta: valor_esc}
            - Dicts: ruta/clave
            - Listas: ruta/idx por defecto; si base_path está en list_key_map y los items son dicts con esa clave,
                      usa ruta/valorClave en vez de índice.
            """
            out = {}

            if is_scalar(obj):
                out[base_path or "/"] = obj
                return out

            if isinstance(obj, dict):
                for k, v in obj.items():
                    new_path = f"{base_path}/{k}" if base_path else str(k)
                    out.update(flatten(v, new_path))
                return out

            # Es una lista
            key_field = list_key_map.get(base_path)
            if key_field and all(isinstance(it, dict) and (key_field in it) for it in obj):
                # Alinear por la clave lógica
                for it in obj:
                    key_val = str(it[key_field])
                    new_path = f"{base_path}/{key_val}"
                    out.update(flatten(it, new_path))
            else:
                # Alinear por índice -> Caso por default (caso que aplica)
                for idx, it in enumerate(obj):
                    new_path = f"{base_path}/{idx}" if base_path else str(idx)
                    out.update(flatten(it, new_path))

            return out

        flat_o = flatten(original)
        flat_g = flatten(generado)

        # Unir todas las rutas posibles
        all_paths = sorted(set(flat_o.keys()) | set(flat_g.keys()))

        # Crear Excel
        wb = Workbook()
        ws = wb.active
        ws.title = "Diferencias"
        ws.append(["Ruta", "Valor JSON Original", "Valor JSON Generado"])

        diffs = 0
        for path in all_paths:
            v1 = flat_o.get(path, None)
            v2 = flat_g.get(path, None)

            if v1 != v2 or type(v1) != type(v2):
                ws.append([path, "" if v1 is None else str(v1), "" if v2 is None else str(v2)])
                diffs += 1

        wb.save(ruta_salida)

        if diffs == 0:
            print("No hay diferencias encontradas. Archivos JSON idénticos")
        else:
            print(f"Diferencias guardadas en {ruta_salida} (Total: {diffs})")