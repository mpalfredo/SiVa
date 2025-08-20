import os
from flask import Flask, render_template, request, redirect, url_for
from controllers.ValidationPadrones_prov import ValidationPipeline

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'uploads'
app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024  # 16MB max size


if not os.path.exists(app.config['UPLOAD_FOLDER']):
    os.makedirs(app.config['UPLOAD_FOLDER'])


@app.route('/', methods=['GET', 'POST'])
def SiVa():
    if request.method == 'POST':
        seleccion = request.form.get('tipoDecla')
        if seleccion == 'opcion1':
            # Inicia conversion XML to Json
            # --- Configuración de rutas: Regímenes y esquemas ---
            xslt_dir_path = r"uploads\XSLT"
            schema_dir_path = r"uploads\Esquemas"

            # --- Configuración de rutas: XML y JSON ---
            xml_json_dir_path = r"uploads\por_validar\DyP3\all"

            # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
            pathOut = os.path.join(app.config['UPLOAD_FOLDER'], "")
            output_path = os.path.join(pathOut, "output")
            os.makedirs(output_path, exist_ok=True)

            # --- Ejecución del flujo completo ---
            pipeline = ValidationPipeline(xml_json_dir_path, xslt_dir_path, schema_dir_path, output_path)
            pipeline.run()
            # Termina proceso de conversion
            result = "Validacion de declaraciones Provisionales terminada correctamente!!"
        elif seleccion == 'opcion2':
            # Inicia conversion XML to Json
            # --- Configuración de rutas: Regímenes y esquemas ---
            xslt_dir_path = r"uploads\XSLT"
            schema_dir_path = r"uploads\Esquemas"

            # --- Configuración de rutas: XML y JSON ---
            xml_json_dir_path = r"uploads\por_validar\DyP3\all"

            # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
            pathOut = os.path.join(app.config['UPLOAD_FOLDER'], "")
            output_path = os.path.join(pathOut, "output")
            os.makedirs(output_path, exist_ok=True)

            # --- Ejecución del flujo completo ---
            pipeline = ValidationPipeline(xml_json_dir_path, xslt_dir_path, schema_dir_path, output_path)
            pipeline.run()
            # Termina proceso de conversion
            result = "Validacion de DAPMV2 terminada correctamente!!"
        else:
            result = "Opción no válida"

    return render_template('index.html', resultado=result) # Muestra el resultado

    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
