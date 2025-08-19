import platform
import subprocess
from pathlib import Path

def get_downloads_folder():
    system = platform.system()

    if system == "Windows":
        try:
            import winreg
            sub_key = r"SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
            with winreg.OpenKey(winreg.HKEY_CURRENT_USER, sub_key) as key:
                downloads, _ = winreg.QueryValueEx(key, '{374DE290-123F-4565-9164-39C4925E467B}')
                return Path(downloads)
        except Exception:
            return Path.home() / "Downloads"

    elif system == "Darwin":  # macOS
        return Path.home() / "Downloads"

    else:  # Linux y otros Unix
        try:
            # Usa xdg-user-dir para obtener la ruta real
            downloads = subprocess.check_output(["xdg-user-dir", "DOWNLOAD"], text=True).strip()
            return Path(downloads)
        except Exception:
            return Path.home() / "Downloads"

'''
if __name__ == "__main__":
    # Ejemplo de uso
    downloads_folder = get_downloads_folder()
    archivo_salida = downloads_folder / "hola.xlsx"

    # Guardar archivo
    with open(archivo_salida, "w", encoding="utf-8") as f:
        f.write("Contenido de prueba")

    print(f"Archivo guardado en: {archivo_salida}")
'''