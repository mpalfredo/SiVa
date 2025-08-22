from lxml import etree

# 1. Definimos la función de reemplazo en Python
def reemplazar(context, txt):
    if txt is None:
        return ""
        # A veces lxml manda listas de nodos, conviértelas a string
    if isinstance(txt, list):
        txt = "".join([str(t) for t in txt])
    return txt.replace("\\", "\\\\").replace("\"", "\\\"").replace("&#x2F;", "/")

ns = etree.FunctionNamespace("urn:my-scripts")
ns['reemplazar'] = reemplazar

xml_doc = etree.parse(r"20220425.SOCR710403TZ6.220080160506.xml")
xslt_doc = etree.parse(r"FisicasV2Json.DecAnuPF.xslt")

transform = etree.XSLT(xslt_doc)

resultado = transform(xml_doc)

print(str(resultado))
