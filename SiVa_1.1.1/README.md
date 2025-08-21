## Sistema de Validación de Declaraciones SAT (SiVa)


Esta herramienta permite validar declaraciones **Provisionales** o **Anuales**, de personas **Físicas** o **Morales**, del SAT comparando archivos **JSON** --generados a partir de la transformación de archivos **XML**-- contra un esquema y los archivos originales.  

---

### 💾 1. Requerimientos

Asegúrate de contar con las siguientes paqueterías de Python instaladas:

    os, time, datetime, json, jsonschema, xml, lxml, re, openpyxl

### 👨🏽‍💻 2. Estructura y casos de uso del código

#### 2.1. Validación de procesos unitarios

Esta funcionalidad permite validar los archivos XML-JSON referentes a una única declaración.

El proceso se realiza de manera independiente en función de la **periodicidad** de la declaración (anual o provisional).

Para el caso de **Declaraciones Anuales**:

- Importa la paquetería necesaria:


    from controllers.ValidationAnuales_1a1 import ValidacionAnualesV2

- Configura las rutas de los archivos XSLT y del esquema JSON concernientes a la declaración.


    xslt_path   = r"ruta/al/archivo/XSLT/archivo.xslt"
    schema_path = r"ruta/al/archivo/JSONSchema/archivo.json"

Sugerencia: Utiliza paths absolutos (globales) en caso de que los archivos no se encuentren dentro del mismo directorio desde donde corres el programa. 

- Configura también las rutas de los archivos de interés (XML, JSON, salida):


    # --- Configuración de rutas: XML y JSON ---
    xml_path  = r"ruta/al/archivo/XML/declaracion_persona1.xml"
    json_path = r"ruta/al/archivo/JSON/declaracion_persona1.json"

    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output") -> En este ejemplo: "Descargas/output"
    os.makedirs(output_path, exist_ok=True)

- Instancia la clase y manda a llamar el método 'validar':


    pipeline = ValidacionAnualesV2(xml_path, json_path, output_path, XSLTProcessor.parse_xslt(xslt_path), JSONFunctions.load_json(schema_path))
    pipeline.validar()

Los archivos resultantes (JSON generado a partir del XML y XLSX donde se desglosan diferencias) se adjuntan en el directorio de salida que especificaste.


Para el caso de **Declaraciones Provisionales**:

- Importa la paquetería necesaria:


    from controllers.ValidationProvisionales_1a1 import ValidacionProvisionales

- Configura las rutas de los **directorios** donde se encuentran los archivos XSLT y JSON Schema. En este caso, el programa se encarga de identificar cuáles son los correspondientes a la declaración provisional: 


    xslt_dir_path   = r"ruta/al/directorio/regimenes"
    schema_dir_path = r"rita/al/directorio/esquemas"

- Configura también las rutas de los archivos de interés (XML, JSON, salida):


    # --- Configuración de rutas: XML y JSON ---
    xml_path  = r"ruta/al/archivo/XML/declaracion_persona2.xml"
    json_path = r"ruta/al/archivo/JSON/declaracion_persona2.json"

    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output") -> En este ejemplo: "Descargas/output"
    os.makedirs(output_path, exist_ok=True)

- Instancia la clase y manda a llamar el método 'validar':


    pipeline = ValidacionProvisionales(xml_path, xslt_dir_path, json_path, schema_dir_path, xlsx_path)
    pipeline.validar()


#### 2.2. Validación de procesos padronales

Esta funcionalidad permite validar los archivos XML-JSON provenientes de las declaraciones de todo un padrón de contribuyentes.

Para el caso de **Declaraciones Anuales**:

- Importa la paquetería necesaria:

        
        from controllers.ValidationPadrones_anuV2 import ValidationPadrones_anuV2:

- Configura el tipo de persona de tu padrón de contribuyentes:


    # --- Configuración de tipo de persona ---
    tipo_persona = "F" -> "F" para personas físicas, "M" para personas morales

- Configura la ruta al directorio que contiene subcarpetas para cada declaración y en cada una de ellas se encuentran las duplas XML-JSON (archivos de interés):


    # --- Configuración de rutas: XML y JSON ---
    xml_json_dir_path  = r"ruta/al/directorio/por_validar"

- Configura también la ruta de salida (donde quieres que se carguen todos los archivos resultantes del proceso de validación):


    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output_padrones") -> En este ejemplo: "Descargas/output_padrones"
    os.makedirs(output_path, exist_ok=True)

- Instancia la clase y manda a llamar el método 'run':


    pipeline = ValidationPadrones_anuV2(tipo_persona, xml_json_dir_path, output_path)
    pipeline.run()

**Observación:** El programa toma el archivo XSLT y el esquema (previamente cargados en sus versiones más recientes, ver 'controllers/XSLTSchemaProcessed.py') e identifica cuáles son los archivos que debe utilizar en función del tipo de persona que especificas.

Para el caso de **Declaraciones Provisionales**:

- Configura las rutas de los **directorios** donde se encuentran los archivos XSLT y JSON Schema. En este caso, el programa se encarga de identificar cuáles son los correspondientes a cada declaración provisional: 


    # --- Configuración de rutas: Regímenes y esquemas ---
    xslt_dir_path   = r"ruta/al/directorio/regimenes"
    schema_dir_path = r"rita/al/directorio/esquemas"

- Configura la ruta al directorio que contiene subcarpetas para cada declaración y en cada una de ellas se encuentran las duplas XML-JSON (archivos de interés):


    # --- Configuración de rutas: XML y JSON ---
    xml_json_dir_path  = r"ruta/al/directorio/por_validar"


- Configura también la ruta de salida:


    # --- Configuración de ruta de archivos de salida: JSON generado y XLSX ---
    output_path = os.path.join(downloads_path(), "output_padrones_prov")
    os.makedirs(output_path, exist_ok=True)

- Instancia la clase y manda a llamar el método 'run':


    pipeline = ValidationPadrones_prov(xml_json_dir_path, output_path)

**Nota:** Observa que si no especificas como parámetros el 'xslt_dir_path' y el 'schema_dir_path' (en ese orden), entonces el programa toma las rutas asignadas por default.

---

### 📁 3. Organización de los directorios involucrados

	SiVa_1.0.9
        |--- common
        |   |--- downloads_path.py
        |
        |--- controllers
        |   |--- archivos
        |   |   |--- esquemas -> Archivos JSON Schema (.json)
        |   |       
        |   |   |--- por_validar
        |   |   |   |--- Anuales
        |   |   |   |   |--- FisicasV2
        |   |   |   |   |    |--- Declaracion_personaF
        |   |   |   |   |    |      |--- Declaracion_personaF.json
        |   |   |   |   |    |      |--- Declaracion_personaF.xml
        |   |   |   |   | 
        |   |   |   |   |    |--- [...]
        |   |   |   |
        |   |   |   |   |--- MoralesV2
        |   |   |   |   |    |--- Declaracion_personaM
        |   |   |   |   |    |      |--- Declaracion_personaM.json
        |   |   |   |   |    |      |--- Declaracion_personaM.xml
        |   |   |   |   |     
        |   |   |   |   |    |--- [...]
        |   |   |
        |   |   |   |--- Provisionales -> Contiene también subdirectorios para cada tipo de persona y régimen
        |   |   |   |   |--- all -> Aquí se encuentran todos los caso prueba proporcionados al momento del desarrollo
        |   |   |   |   |    |--- Declaracion_persona
        |   |   |   |   |    |      |--- Declaracion_persona.json
        |   |   |   |   |    |      |--- Declaracion_persona.xml
        |   |   |   |   |    
        |   |   |   |   |    |--- [...]
        |   |
        |   |   |--- regimenes -> Archivos XSLT (.xslt)
        |   |
        |   |--- ValidationAnuales_1a1.py -> Pipeline unitario
        |   |--- ValidationPadrones_anuV2.py -> Pipeline padronal Anuales V2
        |   |--- ValidationPadrones_prov.py -> Pipeline padronal Provisionales
        |   |--- ValidationProvisionales_1a1.py -> Pipeline unitario
        |   |--- XSLTSchemaProcessed.py -> Archivos procesados DA
        |
        |--- modules
        |   |--- JSONCleaner.py             -> Limpia cadenas JSON
        |   |--- JSONFormato.py             -> Pretty Print JSON
        |   |--- JSONFunctions.py           -> Carga y valida JSON (pipeline de anuales)
        |   |--- JSONSchemaIdentificator.py -> Identifica la versión del JSON Schema (pipeline de provisionales) 
        |   |--- JSONSchemaValidator.py     -> Path JSON Schema y validación (pipeline de provisionales)
        |   |--- JSONsComparator.py         -> Compara JSONs y genera archivo de salida
        |   |--- REGIdentificator.py        -> Identifica concepto de la declaración (pipeline de provisionales)
        |   |--- XMLXSLTProcessor.py        -> Parseo y transformación XML (pipeline de provisionales)
        |   |--- XMLXSLTProcessorV2.py      -> Parseo y transformación XML (pipeline de anuales)

---
### Notas importantes:

El archivo resultante que desglosa las diferencias se guarda en una carpeta (en la ruta de salida especificada) como un archivo **Excel** (.xlsx) con el formato:

	<nombre_archivo_json_original>.xlsx

El archivo **JSON generado** a partir de la transformación XML se guarda en la misma carpeta que el archivo anterior, pero con el formato:

    <nombre_archivo_json_original>_JSON_generado.json

---

### 🖥️ 4. Uso de la interfaz gráfica

---

### Contacto:

**Valeria Cano Soto** (_valeria.cano@syesoftware.com_)  
Diseñadora de Software | SYE  
Como recurso especializado en SAT   
