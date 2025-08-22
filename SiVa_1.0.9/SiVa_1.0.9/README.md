## Sistema de Validaciones de Declaraciones SAT (SiVa)


Esta herramienta permite validar declaraciones **Provisionales** o **Anuales**, de personas **Físicas** o **Morales**, del SAT comparando archivos **JSON** --generados a partir de la transformación de archivos **XML**-- contra un esquema y los archivos originales.  

---

### 👨🏽‍💻 Estructura y casos de uso del código



---

### 📁 Organización de los directorios involucrados

	SiVa_1.0.9
		|--- common
        |   |--- downloads_path.py
        |
        |--- controllers
		|   |--- archivos
        |   |   |--- esquemas
        |   |       
		|	|	|--- por_validar
        |   |   |    |--- Anuales
        |   |   |    |      |--- FisicasV2
        |   |   |    |          |--- Declaracion_persona1
        |   |   |    |                |--- Declaracion_persona1.json
        |   |   |    |                     |--- Declaracion_persona1.xml
        |   |   |    |             |--- [...]
        |   |   |    |      |--- MoralesV2
        |   |   |    |          |--- Declaracion_persona2
        |   |   |    |                |--- Declaracion_persona2.json
        |   |   |    |                     |--- Declaracion_persona2.xml
        |   |   |    |              |--- [...]
        |   |   |
        |   |   |   |--- Provisionales -> Contiene también subdirectorios donde se 


---

### 🖥️ Uso de la interfaz gráfica

---


---
### Notas importantes:

Todos los resultados se guardan como archivos Excel (.xlsx) con el formato:

	<nombre_instancia>_json_vs_xml.xlsx

Los archivos referentes al mapeo entre claves informativas deberán adjuntarse en el mismo directorio donde se encuentre el archivo asociado a la demo. En concreto:

	mapeo_xml_json.xlsx -> Para declaraciones provisionales

	mapeo_xml_json_am2.xlsx -> Para declaraciones anuales