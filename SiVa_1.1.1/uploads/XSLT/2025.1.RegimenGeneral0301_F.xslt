<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:output method='json' omit-xml-declaration="yes" />

	<xsl:template match="/">
		{
		"idconceptopago":"0301",
		"descconceptopago": "IVA Personas Fisicas",
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impoconceptopago'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C26']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Concepto":{
		"Pago":
		{		
		
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'afavor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C6']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'acargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C7']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'parteactualizada'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C8']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'recargos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C9']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'multacorreccionfiscal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C10']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalcontribuciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C11']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subsidioparaempleo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C12A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impdepoenefecacreditable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C12B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>

		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'compensaciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C13']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:choose>
			<xsl:when test="//entidad/propiedad[@claveinformativa = '0301001'] > 0" >
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'tienescompensacionesporaplicar'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0301001']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				"tienescompensacionesporaplicar": 0,
			</xsl:otherwise>
		</xsl:choose>
		<xsl:choose>
			<xsl:when test="//entidad/propiedad[@claveinformativa = '0301002'] > 0" >
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'tienesestimulosporaplicar'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0301002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				"tienesestimulosporaplicar": 0,
			</xsl:otherwise>
		</xsl:choose>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estimulos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C18']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'acreditamientosorteos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C19']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalaplicaciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C21']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'fechapagorealizadoanterioridad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C5']" />
			<xsl:with-param name="Tipo" select="'date'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montopagadoanterioridad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'realizoult48pagoconcepto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'cantidadacargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C22']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'optapagarparcialidades'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C23A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impprimeraparcialidad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C23']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impsinprimeraparcialidad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C24']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'cantidadafavor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C25']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'cantidadapagar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C26']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'habilitacampoparcial'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0504000']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tiposolicitud'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '23B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numerosolicitar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '23C']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'accesoriosdistintosdelasmultas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C10A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20Z']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'fechapagolineaadrs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C5A']" />
			<xsl:with-param name="Tipo" select="'datetimeCeroHoras'" />
		</xsl:call-template>
		"DetMontoPagadoLineaCapturaADR":[
		<xsl:for-each select="//entidad[@tipo='SAT_LINEACAPTURAPAGOS']/fila">
			{
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'lineacapturaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20S1']" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'clavebancodellineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20U1']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'bancodellineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20U1']/@etiqueta" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'fechapagolineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20V1']" />
				<xsl:with-param name="Tipo" select="'datetimeCeroHoras'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'numerooperacionlineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20W1']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'llavepagolineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20X1']" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'montopagoadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20Y1']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'origenlineacaptura'" />
				<xsl:with-param name="ValorAtributo" select="'LCPagoAnt'" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'numerooperacionlineaserdeclaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20T1']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			},
		</xsl:for-each>
		<xsl:for-each select="//entidad[@tipo='SAT_LINEACAPTURAADR']/fila">
			{
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'lineacapturaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20S']" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'numerodocumentolineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20T']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'clavebancodellineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20U']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'bancodellineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20U']/@etiqueta" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'fechapagolineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20V']" />
				<xsl:with-param name="Tipo" select="'datetimeCeroHoras'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'numerooperacionlineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20W']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'llavepagolineaadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20X']" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'montopagoadrs'" />
				<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C20Y']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'origenlineacaptura'" />
				<xsl:with-param name="ValorAtributo" select="'LCNoCons'" />
				<xsl:with-param name="Tipo" select="'string'" />
			</xsl:call-template>
			},
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'importepagado48hrs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalmontoantadrs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20Z1']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'deseaagregarlineanoconciderada'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20BB']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estatus'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5200001']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
    <xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numopedecla'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5200002']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
    <xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'fechapresdecla'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5200003']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
    <xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'pagosprovefecant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5200004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},

		"Compensaciones": [
		<xsl:for-each select="//entidad[@clave='SAT_IVA_COM_0301']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'tipocompensacion'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1302']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'desccompensacion'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1302_01']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'periodicidadcomp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1303']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'periodocomp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1304']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ejerciciocomp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1305']" />
					<!--C1803-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'fechacausacioncomp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1315']" />
					<xsl:with-param name="Tipo" select="'date'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numeropperacioncausa'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1306']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'conceptodelacomp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1307']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'saldoaaplicar'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1308']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'tipoDeclaracioncomp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1309']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numeroOperacioncomp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1310']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'montosaldofavororig'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1311']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'remanentehistantesaplica'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1312']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'fechapresentodeclasaldofavor'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1314']" />
					<xsl:with-param name="Tipo" select="'date'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'remanenteactualizadoantesaplica'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1313']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numeroconsecinteraccion'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1301']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'cveConceptoaplicocompensa'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1316']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'total'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0401001']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"Estimulos": [
		<xsl:for-each select="//entidad[@tipo='SAT_OTROS_ESTIMULOS']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'limiteestimulosaplica'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0503005']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numconsecutivoiteracion'" />
					<xsl:with-param name="ValorAtributo" select="@identificador" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'tipodeestimulo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1802']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'descestimulo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1802']/@etiqueta" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'poraplicarperiodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1803']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'total'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0501002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"Deducciones": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ComprasYGastosPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1008001']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'DeduccionesInversionesPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1008002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TieneEstimulosAplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1008003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EstimulosDiminuir'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1008004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalDeduccionesAutorizadas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1008005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Gastosnominaperiodonoconsideprellenado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1008006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetComprasYGastosDelPeriodo":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasygastosfacturados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009001']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'devolucionesdtosbonificaciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasgastosnodeduciblesmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasgastosnoprellenado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasygastosmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'factegresoscomprasygastosmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasygastosdeduciblesmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasygastosmesesantpagadas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasygastosperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1009009']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetComprasYGastosFacturados":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'comprasygastosmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1010008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_10110012']/fila) &gt; 0" >
			"DetComprasYGastosFacturadosDelMes":[
			{
			<xsl:for-each select="//entidad[@clave='SAT_10110012']">
				<xsl:for-each select="fila">
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010001']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010002']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010003']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010004']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010005']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010006']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'subtotaldescuentofacturasingreso'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1010007']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:for-each select="//entidad[@clave='SAT_1010009']">
				<xsl:for-each select="fila">
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mestipopago'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010009']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpago'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010010']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpago'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010011']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactingcobsinimppago'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010012']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'subtotdesccfdiing'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1010013']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'ingcobsinimp'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1010014']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			},
			]
		</xsl:if>
		},
		"DetDescBoniFacturadasMes":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'mes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011001']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'mes2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011007']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturascanceladas2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturasvigentes2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011009']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotal2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011010']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuento2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011011']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldescuento2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1011012']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuentofacturastipoingreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1011013']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldtofacturasegreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1011014']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'devolucionesdtosbonificacionesmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1011015']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetFacturasEgresosRecibidas":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'mes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1012001']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1012002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1012003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1012008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1012004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1012005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[0]/propiedad[@claveinformativa = '1012006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'factsegresoscomprasygastosmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1012007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetComprasYGastosMeses":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1013004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_1009008']/fila) &gt; 0" >
			"DetComprasYGastosMesesAnt": [
			<xsl:for-each select="//entidad[@clave='SAT_1009008']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1013001']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'comprasygastos'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1013002']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'estatus'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1013003']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'comprasygastosmesesantpagadas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1013005']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			]
		</xsl:if>
		},
		"DetInversionesPeriodo":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'inversionesmesesantpagadas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1014005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'deduccioninversionesmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1014006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'deduccionesinversionesperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1014007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_1008002']/fila) &gt; 0" >
			"DetInversionesPeriodos":[
			<xsl:for-each select="//entidad[@clave='SAT_1008002']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1014001']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'inversiones'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1014002']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'estatus'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1014003']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'total'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1014004']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		},
		"DetEstimulos":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalestimuloenperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1015004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalaplicarenperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1015005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_1008004']/fila) &gt; 0" >
			"DetEstimulosDisminuir": [
			<xsl:for-each select="//entidad[@clave='SAT_1008004']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'tipoestimulo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1015001']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'estimuloautorizadoenperiodo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1015002']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'poraplicarenperiodo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1015003']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			]
		</xsl:if>
		},
		},
		<xsl:choose>
			<xsl:when test="count(//entidad[@clave='SAT_1024001']/fila) > 0">
				"DetGastosNomNoConsEnPrellenado":[
				<xsl:for-each select="//entidad[@clave='SAT_1024001']">
					<xsl:for-each select="fila">
						{
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'mes'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1024001']" />
							<xsl:with-param name="Tipo" select="'string'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'gastonomina'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1024002']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'estatus'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1024003']" />
							<xsl:with-param name="Tipo" select="'string'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'total'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1024004']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'gastonominamesantedeclapagadas'" />
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024005']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'gastosnominames'" />
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024006']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'gastosnominaperiodo'" />
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024007']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						} ,
					</xsl:for-each>
				</xsl:for-each>
				],
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionInmediataInversiones'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2000020']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				"DetGastosNomNoConsEnPrellenado":[{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'gastonominamesantedeclapagadas'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024005']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'gastosnominames'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024006']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'gastosnominaperiodo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024007']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				}]
			</xsl:otherwise>
		</xsl:choose>
		},
		"IVAAcreditable" :{
		<xsl:variable name="ValoresConcepto" select="//entidad[@claveimpuesto= '0301']"/>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalActosActividadesPagadosTasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400101']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalActActPagadosSuEstRegiFron'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400102']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalActPagaImpoBienYSersTasa16Iva'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A6']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalDemasActosActividadesPagadosTasa0Iva'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400104']" />
			<!--A8-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalActPagaPagaraElIvaExentos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400105']" />
			<!--A10-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIvaActosActividadesPagadosTasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400106']" />
			<!--36A-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaPagadoSujetoEstimuloLaRegionFronteriza'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400107']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaNoPagaAplicacionEstimuloLaRegionFronteriza'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400108']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotaIvaActoPagaImporBieYServTasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '36C']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotaIvaTrasEfectivamentePagado'" />
			<xsl:with-param name="ValorAtributo" select="$ValoresConcepto/propiedad[@claveinformativa = '1400110']" />	<!--36-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaAcreditable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A52']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MonAcrediActIncrementarDerivadoAjuste'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A53']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIvaAcreditablePeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A54']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetTotalActosActividadesPagadasNoSePagaraIVA" : {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoPorDetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10K']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'AdquiSuelUtilizadasParaCasaHabitacion'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'AdquisicionLibrosPeriodicosORevistas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'RegaliasPagadasALosAutores'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10C']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'AdquisicionBienesMueblesUsadosExceptoLosAdquiridosEmpresas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10D']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ServicioTransportePublicoTerrestrePersonas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10E']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ServiciosProfesionalesMedicina'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10F']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'AseguramientoContraRiesgosAgropecuarios'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10G']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'UsoOGoceTemporalFincasParaFinesAgricolasOGanaderos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10H']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ActosOActividadesPagadosEnLaImportacionBienesServiciosExentos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10I']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrosActosOActividadesPagadosExentos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10J']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetTotalActosActividadesPagadosImportacionBienesServiciosTasa16IVA" : {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoPorDetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A6E']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImportacionBienesIntangiblesTasaDel16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A6A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpUsoGoceTemporBienesIntanTasaDel16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A6B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImportacionServiciosTasaDel16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A6C']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrosActActiPagadoImporBienesServicTasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A6D']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetTotalActosActividadesPagadosTasa16IVA":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoDetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A2D']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'InteresesPagadosTasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A2A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'RegaliasPagadasEntrePartesRelacionadasTasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A2B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrosActosOActividadesPagadosTasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A2C']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		<xsl:choose>
			<xsl:when test="count(//entidad[@clave='SAT_r2101211']/fila) > 0">
				"TotalActosActividadesPagadosNOSePagaraIVA" : [
				<xsl:for-each select="//entidad[@clave='SAT_r2101211']">
					<xsl:for-each select="fila">
						{
						<xsl:variable name="v" select="position()" />
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'Mes'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400601']" />
							<xsl:with-param name="Tipo" select="'string'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400602']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400603']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'Subtotal'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400604']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'Descuento'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400605']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400606']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'ImpTrasladadosBaseIvaExen'" />
							<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400607']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>

						<xsl:variable name="gridActividadesNoIva" select="//entidad[@clave='SAT_r2101218']/fila[$v]" />
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'Mes2'" />
							<xsl:with-param name="ValorAtributo" select="$gridActividadesNoIva/propiedad[@claveinformativa = '1400608']" />
							<xsl:with-param name="Tipo" select="'string'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas2'" />
							<xsl:with-param name="ValorAtributo" select="$gridActividadesNoIva/propiedad[@claveinformativa = '1400609']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes2'" />
							<xsl:with-param name="ValorAtributo" select="$gridActividadesNoIva/propiedad[@claveinformativa = '1400610']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'IngresosCobradoSinImpuestos'" />
							<xsl:with-param name="ValorAtributo" select="$gridActividadesNoIva/propiedad[@claveinformativa = '1400611']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBaseIvaExentos'" />
							<xsl:with-param name="ValorAtributo" select="$gridActividadesNoIva/propiedad[@claveinformativa = '1400612']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'BasePorLaQueNoSePagaraElIvaExentosFacturasRecibidasTipoIngreso'" />
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400613']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'BasePorLaQueNoSePagaraElIvaExentosFacturasRecibidasTipoPago'" />
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400614']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'TotalActActPagadosQueNoSePagaIva'" />
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						},
					</xsl:for-each>
				</xsl:for-each>
				],
			</xsl:when>
			<xsl:otherwise>
				"TotalActosActividadesPagadosNOSePagaraIVA" : [{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BasePorLaQueNoSePagaraElIvaExentosFacturasRecibidasTipoIngreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400613']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BasePorLaQueNoSePagaraElIvaExentosFacturasRecibidasTipoPago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400614']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalActActPagadosQueNoSePagaIva'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A10']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				}],
			</xsl:otherwise>
		</xsl:choose>
		"TotalActosActividadesPagadosSujetosEstimuloRF" : [
		<xsl:for-each select="//entidad[@clave='SAT_r2101173']">
			<xsl:for-each select="fila">
				{
				<xsl:variable name="k" select="position()" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400301']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400302']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400303']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400304']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400305']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400306']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladadosBaseIva8'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400307']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladadosIva8'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400308']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:variable name="segundoGridEstimuloRF" select="//entidad[@clave='SAT_r2101181']/fila[$k]" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridEstimuloRF/propiedad[@claveinformativa = '1400309']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridEstimuloRF/propiedad[@claveinformativa = '1400310']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridEstimuloRF/propiedad[@claveinformativa = '1400311']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IngresosCobradoSinImpuestos'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridEstimuloRF/propiedad[@claveinformativa = '1400312']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladados2BaseIva8'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridEstimuloRF/propiedad[@claveinformativa = '1400313']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladados2Iva8'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridEstimuloRF/propiedad[@claveinformativa = '1400314']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIva8FacturaRecibidasTipoIngreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400315']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIva8FacturasRecibidasTipoPago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400316']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalActosActivPagadosSujEstimuloRegionFronteriza'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400317']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"TotalActosActividadesPagadosTasa16IVA":[
		<xsl:for-each select="//entidad[@clave='SAT_r2101156']">
			<xsl:for-each select="fila">
				{
				<xsl:variable name="i" select="position()" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400201']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400202']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400203']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400204']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400205']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400206']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBaseIva16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400207']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosIva16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400208']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:variable name="segundoGrid" select="//entidad[@clave='SAT_r2101164']/fila[$i]" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGrid/propiedad[@claveinformativa = '1400209']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGrid/propiedad[@claveinformativa = '1400210']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGrid/propiedad[@claveinformativa = '1400211']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IngresosCobradosSinImpuestos2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGrid/propiedad[@claveinformativa = '1400212']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladados2BaseIva16'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGrid/propiedad[@claveinformativa = '1400213']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladados2Iva16'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGrid/propiedad[@claveinformativa = '1400214']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIva16FacturaRecibidasTipoIngreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400215']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIva16FacturasRecibidasTipoPago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400216']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalLosActosOActividadesPagadosTasa16'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A2']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"TotalDemasActosActividadesPagadasTasa0IVA":[
		<xsl:for-each select="//entidad[@clave='SAT_r2101197']">
			<xsl:for-each select="fila">
				{
				<xsl:variable name="j" select="position()" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400501']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400502']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400503']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400504']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400505']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400506']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladadosBaseIva0'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400507']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:variable name="segundoGridIva0" select="//entidad[@clave='SAT_r2101204']/fila[$j]" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIva0/propiedad[@claveinformativa = '1400508']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIva0/propiedad[@claveinformativa = '1400509']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes2'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIva0/propiedad[@claveinformativa = '1400510']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IngresosCobradoSinImpuestos'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIva0/propiedad[@claveinformativa = '1400511']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladados2Iva0'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIva0/propiedad[@claveinformativa = '1400512']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIva0FacturaRecibidasTipoIngreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400513']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIva0FacturasRecibidasTipoPago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400514']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalActosActiPagaTasa0'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A8']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"TotalIVAAcreditableActividadesGravadas1680":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIvaTrasladadoContriEfectivamentePagado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '36']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaTrasAdquiBieInveUsoGoceActividadesGravados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A37']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaTraslAdquiExclusivamenteRealizarActosActividadesGravados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A41']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaPagaAdqBienesDistintUsoGoceTemActividadesGravados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A39']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaPagaImportaActividadesGravados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A43']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIvaCorrespondienteAActosActividadesGravados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A45']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"TotalIVAAcreditableImportacionActosActividadesNoObligadosPagoImpuesto":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaTraslaAdquisUsoGoceTemObligadoPagoDelImpuesto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A46']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaTraslaDestinadaObligadoPagoDelImpuesto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A47']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaBienesUtiliActosActividadesNoSeEstPagoDelImpuesto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A48']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'SeleccionaLaProporcionIvaAplicaras'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A49']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ProporcionIva'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A50']" />	<!--50-->
			<xsl:with-param name="Tipo" select="'intString'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaAcrediActividadesGravadosObligadoPagoDelImpuesto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A51']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaAcreditable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A52']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetValorActosActGravadosDiferenteTasaIVATipoIngresoIVAAcreditable":[
		<xsl:if test=" count(//entidad[@clave='SAT_r2101225']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101225']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001I'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002I'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003I'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004I'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005I'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101225']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700001I']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700002I']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700003I']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700004I']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700005I']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
				</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101173']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101173']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001J'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002J'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003J'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004J'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005J'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101173']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001J']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002J']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003J']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004J']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005J']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
				</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101197']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101197']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001K'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002K'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003K'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004K'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005K'] !='' ">
						{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101197']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001K']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002K']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003K']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004K']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005K']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
						</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_AFPE201009']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_AFPE201009']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001L'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002L'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003L'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004L'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005L'] !='' ">
						{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE201009']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001L']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002L']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003L']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004L']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005L']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
				</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101211']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101211']">
				<xsl:for-each select="fila">									
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001M'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002M'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003M'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004M'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005M'] !='' ">
						{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101211']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001M']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002M']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003M']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004M']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005M']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
				</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101156']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101156']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001N'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002N'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003N'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004N'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005N'] !='' ">
					{				
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101156']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001N']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002N']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003N']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004N']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005N']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009J']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
				</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101241']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101241']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001O'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002O'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003O'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004O'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005O'] !='' ">
					{										
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101241']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001O']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002O']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003O']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004O']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005O']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008O']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009O']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
				</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101262']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101262']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001P'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002P'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003P'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004P'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005P'] !='' ">
					{										
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101262']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001P']" /><!--TODO: Tiene 6 campos--> 
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002P']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003P']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004P']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005P']" /><!--TODO: Tiene 6 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008O']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009O']" /><!--TODO: Tiene 2 campos-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030M']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				},
				</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		],
		"DetValorActosActGravadosDiferenteTasaIVATipoPagoIVAAcreditable":[
		<xsl:if test=" count(//entidad[@clave='SAT_r2101233']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101233']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011I'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012I'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013I'] !='' ">
					{		
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101233']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011I']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012I']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013I']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101181']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101181']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011J'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012J'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013J'] !='' ">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101181']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011J']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012J']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013J']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101204']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101204']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011K'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012K'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013K'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101204']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011K']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012K']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013K']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101218']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101218']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011L'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012L'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013L'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101218']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011L']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012L']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013L']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017J']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101249']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101249']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011M'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012M'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013M'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101249']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011M']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012M']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013M']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101269']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101269']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011N'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012N'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013N'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101269']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011N']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012N']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013N']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_AFPE211009']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_AFPE211009']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011O'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012O'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013O'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE211009']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011O']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012O']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013O']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101164']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101164']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011P'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012P'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013P'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101164']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011P']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012P']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013P']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_AFPE211009']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_AFPE211009']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011O'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012O'] !='' or 						
						//entidad/propiedad[@claveinformativa = '4700013O'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE211009']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011O']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012O']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013O']" /><!--TODO: Tiene 6 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015I']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017M']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018K']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021O']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700029L']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		],
		"DetIVAPagadoTasa16TipoIngreso":[
		<xsl:for-each select="//entidad[@clave='SAT_r2101156']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400201']" /><!--4900001-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400202']" /><!--4900002-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400203']" /><!--4900003-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400204']" /><!--4900004-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400205']" /><!--4900005-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400206']" /><!--4900006-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestostrasladadosBaseIVA16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400207']" /><!--4900007-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Impuestotrasiva16tipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400208']" /><!--4900016-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ClaveEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101156']/@clave" />	<!--TODO: Clave pendiente-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101156']/@titulolargo" />	<!--TODO: Clave pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"DetIVAPagadoTasa16TipoPago":[
		<xsl:for-each select="//entidad[@clave='SAT_r2101017']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mestipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200909']" /><!--4900008-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasCanceladastipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400210']" /><!--4900009-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasVigentestipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400211']" /><!--4900010-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Importepagadosinimpuestos'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400212']" /><!--4900011-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestostrasladadosBaseIVA16tipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400213']" /><!--4900012-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestostrasladadosIVA16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400214']" /><!--4900013-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IVA16facturasrecibidastipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400215']" /><!--4900014-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IVA16facturasrecibidastipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400216']" /><!--4900015-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ClaveEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101017']/@clave" />	<!--TODO:Clave pendiente-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101017']/@titulolargo" />	<!--TODO:Clave pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"DetValActosActEmitidosEstFiscalActEconomicasIVAAcreditable":[{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalimptrasbasexxx1'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700020L']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montodetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700022B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montodetallado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700023B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaleconomia'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700024B']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetActosActEmitidosEstFiscalFomenteEconomiaIVAAcreditable":[
		<xsl:for-each select="//entidad[@clave='SAT_AFPE201009']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800001B']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800002B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800003B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800004B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800005B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800006B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBase'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800007B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mestipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800008B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasCanceladastipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800009B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasVigentestipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800010B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Ingresoscobradossinimpuestostpago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800011B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBasetpago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800012B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIVAfacturasemitidastipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4800013B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIVAfacturasemitidastipopago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4800014B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Vactosoactemiapliestfiseco'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4800015B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Actosoactividades'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800016B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Importe'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800017B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ClaveEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE201009']/@clave" />  <!--TODO: clave pendiente-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE201009']/@titulolargo" />  <!--TODO: clave pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		}],
		},
		},
		},<!--// Cierre iVAAcreditable-->
		"IVAACargo": {
		"DetValActosActEmitidosEstFiscalActEconomicas":[{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Valoractactemiaplestfisfompromeco'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700019']" />			
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalimptrasbasexxx1'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700020D']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montodetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700022A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montodetallado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700023A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaleconomia'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700024A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetActosActEmitidosEstFiscalFomenteEconomia":[
		<xsl:for-each select="//entidad[@clave='SAT_AFPE01009']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800001A']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800002A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800003A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800004A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800005A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800006A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBase'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800007A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mestipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800008A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasCanceladastipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800009A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumerofacturasVigentestipopago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800010A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Ingresoscobradossinimpuestostpago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800011A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBasetpago'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800012A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIVAfacturasemitidastipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4800013A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIVAfacturasemitidastipopago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4800014A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Vactosoactemiapliestfiseco'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4800015A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Actosoactividades'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800016A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Importe'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4800017A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ClaveEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE01009']/@clave" />	<!--TODO: clave pendiente--> <!--clave-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE01009']/@titulolargo" />	<!--TODO: clave pendiente--> <!--titulo largo-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		}],
		"DetValorActosActGravadosDiferenteTasaIVATipoIngreso": [
		<xsl:if test=" count(//entidad[@clave='SAT_r2101009']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101009']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001A'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002A'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003A'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004A'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005A'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006A'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007A'] !='' ">
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101009']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700001A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700002A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700003A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700004A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700005A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006A']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007A']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101026']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101026']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001B'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002B'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003B'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004B'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005B'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006B'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007B'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101026']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006A']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007A']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101044']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101044']">
				<xsl:for-each select="fila">									
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001C'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002C'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003C'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004C'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005C'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006C'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007C'] !='' ">	
						{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101044']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006A']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007A']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_AFPE01009']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_AFPE01009']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001D'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002D'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003D'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004D'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005D'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006D'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007D'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE01009']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006A']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007A']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101059']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101059']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001E'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002E'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003E'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004E'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005E'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006E'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007E'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101059']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006A']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007A']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101074']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101074']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001F'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002F'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003F'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004F'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005F'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006F'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007F'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101074']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006A']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007A']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101089']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101089']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001G'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002G'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003G'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004G'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005G'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006G'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007G'] !='' ">		
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101089']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006G']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007G']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101105']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101105']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700001H'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700002H'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700003H'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700004H'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700005H'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700006H'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700007H'] !='' ">		
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101105']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700001H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700002H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700003H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700004H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700005H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotaImpTrasBaseIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700006G']" /><!--4700006-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImtraIVA16tipoingreso'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700007G']" /><!--4700007-A--><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700008H']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700009H']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0ting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700010C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700025E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjeting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700027F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		],
		"DetValorActosActGravadosDiferenteTasaIVATipoPago": [
		<xsl:if test=" count(//entidad[@clave='SAT_r2101017']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101017']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011A'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012A'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013A'] !='' ">		
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101017']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013A']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014A']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015A']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101034']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101034']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011B'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012B'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013B'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101034']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013B']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014B']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015A']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101051']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101051']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011C'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012C'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013C'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101051']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013C']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014B']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015A']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_AFPE11009']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_AFPE11009']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011D'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012D'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013D'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_AFPE11009']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013D']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014B']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015A']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101066']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101066']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011E'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012E'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013E'] !='' ">		
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101066']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013E']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014B']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015A']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101081']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101081']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011F'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012F'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013F'] !='' ">		
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101081']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013F']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014B']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015A']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101097']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101097']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011G'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012G'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013G'] !='' ">		
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101097']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013G']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014G']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015G']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017B']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_r2101112']/fila) &gt; 0" >			
			<xsl:for-each select="//entidad[@clave='SAT_r2101112']">
				<xsl:for-each select="fila">
					<xsl:if test="//entidad/propiedad[@claveinformativa = '4700011H'] !='' or 
						//entidad/propiedad[@claveinformativa = '4700012H'] !='' or
						//entidad/propiedad[@claveinformativa = '4700013H'] !='' ">	
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'entidadori'" />
						<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101112']/@clave" /><!--TODO: Clave Pendiente-->
						<xsl:with-param name="Tipo" select="'intString'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700011H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700012H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4700013H']" /><!--TODO: tiene 8 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasBaseIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700014H']" /><!--TODO: tiene 3 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalImptrasIVA16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700015G']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase8tpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700016B']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsiva8tipag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700017H']" /><!--TODO: tiene 2 valores-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrsbase0tp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700018C']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbasexxx2'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700021D']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrasbaseexetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700026E']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalimptrabasenoobjetpag'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700028F']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					</xsl:if>
				</xsl:for-each>
			</xsl:for-each>		
		</xsl:if>
		],
		},<!--//Cierre IvaACArgo-->
		"DeterminacionIVA":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Actividadestasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200101']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detactividadestasa16":[
		<xsl:if test=" count(//entidad[@clave='SAT_r2101009']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_r2101009']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="m" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdiing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200901']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfaccaningcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200902']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacvigingcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200903']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotcfdivigmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200904']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200905']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subdescfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200906']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrascfdivigcobbase16'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200907']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrascfdivigcob16'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200908']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<!--Pago-->
					<xsl:variable name="gridActTasa16" select="//entidad[@clave='SAT_r2101017']/fila[$m]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridActTasa16/propiedad[@claveinformativa = '1200909']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridActTasa16/propiedad[@claveinformativa = '1200910']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridActTasa16/propiedad[@claveinformativa = '1200911']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'incobsimppago'" />
						<xsl:with-param name="ValorAtributo" select="$gridActTasa16/propiedad[@claveinformativa = '1200912']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrapagbas16'" />
						<xsl:with-param name="ValorAtributo" select="$gridActTasa16/propiedad[@claveinformativa = '1200913']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrapag16'" />
						<xsl:with-param name="ValorAtributo" select="$gridActTasa16/propiedad[@claveinformativa = '1200914']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseiva16factemitidasting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200915']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseiva16factemitidastpago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200916']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actgravadastasa16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'MontoPorDetallar'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56DD']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'InteresesCobradosTasa16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56AA']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'RegaliasEntrePartesRelacionadasTasa16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56BB']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'OtrosActosActividadesGravadosTasa16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56CC']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Actividadesestimulorf'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0201008']" />		<!--1200102-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetActividadesSujEstRF":[
		<xsl:if test=" count(//entidad[@clave='SAT_r2101026']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_r2101026']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="p" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdiing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201001']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfaccaningcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201002']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacvigingcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201003']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotcfdivigmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201004']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201005']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subdescfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201006']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrascfdivigcobbase8'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201007']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrascfdivigcob8'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201008']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:variable name="gridEstRF" select="//entidad[@clave='SAT_r2101034']/fila[$p]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstRF/propiedad[@claveinformativa = '1201009']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstRF/propiedad[@claveinformativa = '1201010']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstRF/propiedad[@claveinformativa = '1201011']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'incobsimppago'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstRF/propiedad[@claveinformativa = '1201012']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrapagbas8'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstRF/propiedad[@claveinformativa = '1201013']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrapag8'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstRF/propiedad[@claveinformativa = '1201014']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseiva8factemitidasting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201015']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseiva8factemitidastpago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201016']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actsujetasestimulorf'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201017']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ValorActosActividadesSujetosEstimulo'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200326']" />	<!--0201008-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Actividadestasa0'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200103']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetActividadesTasa0":[
		<xsl:if test=" count(//entidad[@clave='SAT_r2101044']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_r2101044']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="n" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdiing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201101']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfaccaningcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201102']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacvigingcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201103']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotcfdivigmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201104']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201105']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subdescfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201106']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrascfdivigcobbase0'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201107']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:variable name="gridTasa0" select="//entidad[@clave='SAT_r2101051']/fila[$n]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa0/propiedad[@claveinformativa = '1201108']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa0/propiedad[@claveinformativa = '1201109']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa0/propiedad[@claveinformativa = '1201110']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'incobsimppago'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa0/propiedad[@claveinformativa = '1201111']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrapagbas0'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa0/propiedad[@claveinformativa = '1201112']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseiva0factemitidasting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201113']" />	<!--revisar-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseiva0factemitidastpago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201114']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actgravadastasa0sum'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201115']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actgravadastasa0contrib'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201116']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mondetallar'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '59CC']" /><!--1201117-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mondetallado'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201118']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actnalgravtasa0'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201119']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actexpgravtasa0'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201120']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ActAgriGanSilPesTasa0'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '59AA']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'OtrosActosActiGraTasa0'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '59BB']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
                	<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Valoractosactemitidospodebi'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300115']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Actividadesexentas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200104']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetActividadesExentas":[
		<xsl:if test=" count(//entidad[@clave='SAT_r2101059']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_r2101059']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="o" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdiing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201201']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfaccaningcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201202']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacvigingcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201203']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotcfdivigmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201204']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201205']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subdescfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201206']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrascfdivigcobbaseexe'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201207']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:variable name="gridExternas" select="//entidad[@clave='SAT_r2101066']/fila[$o]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridExternas/propiedad[@claveinformativa = '1201208']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridExternas/propiedad[@claveinformativa = '1201209']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridExternas/propiedad[@claveinformativa = '1201210']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'incobsimppago'" />
						<xsl:with-param name="ValorAtributo" select="$gridExternas/propiedad[@claveinformativa = '1201211']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrapagbasexe'" />
						<xsl:with-param name="ValorAtributo" select="$gridExternas/propiedad[@claveinformativa = '1201212']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseivaexcfactemitting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201213']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseivaexcfactemittpago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201214']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<!--<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actividadesexentas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201215']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>-->
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ValorActosActPagarImpuestoExentos'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201215']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'MontoDetallar'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61MM']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EnajSueloConstSueloDestinadasUtiCasaHabitacion'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61AA']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EnajenacionLibrosPeriTasNoEditaContri'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61BB']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'RegaliasCobradasAutores'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61CC']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EnajenacionBienesMueblesUsadosExceptoEnajenadosEmpresas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61DD']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EnajBilletCompLoteriRifaSortConcursosTodaClase'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61EE']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ServiciosEnsenanza'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61FF']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ServicioTransportePublicoTerrestrePersonas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61GG']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'OperacionesFinancierasDerivadas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61HH']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'VentaBoletosParaEspectaculosPublicos'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61II']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ServiciosProfesionalesMedicina'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61JJ']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'UsoGocAlInmCasaHabitacionFincasFinesAgriGana'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61KK']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'OtrosIngresosExentosIva'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '61LL']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Actividadesnoimpuesto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200105']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetActividadesNoObjImp":[
		<xsl:if test=" count(//entidad[@clave='SAT_r2101074']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_r2101074']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="u" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdiing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201301']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfaccaningcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201302']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacvigingcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201303']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotcfdivigmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201304']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201305']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subdescfdivigcobmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201306']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrascfdivigcobbasenoobj'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1201307']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:variable name="gridNoObj" select="//entidad[@clave='SAT_r2101081']/fila[$u]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridNoObj/propiedad[@claveinformativa = '1201308']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridNoObj/propiedad[@claveinformativa = '1201309']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridNoObj/propiedad[@claveinformativa = '1201310']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'incobsimppago'" />
						<xsl:with-param name="ValorAtributo" select="$gridNoObj/propiedad[@claveinformativa = '1201311']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrapagbasenoobj'" />
						<xsl:with-param name="ValorAtributo" select="$gridNoObj/propiedad[@claveinformativa = '1201312']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseivanoobjfactemitidasting'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201313']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'baseivanoobjfactemitidastpago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201314']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'actividadesnoobjetodelimpuesto'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1201315']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ivacargotasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200106']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detivacargotasa16": [
		<xsl:if test=" count(//entidad[@clave='SAT_r2101089']/fila) &gt; 0" >
			{
			<xsl:for-each select="//entidad[@clave='SAT_r2101089']">
				<xsl:for-each select="fila">
					<xsl:variable name="r" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200201']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200202']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200203']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200204']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200205']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200206']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impuestostrasladadosiva16'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200207']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ivacargotasa16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200208']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptraiva16ing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200210']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:variable name="gridTasa16" select="//entidad[@clave='SAT_r2101097']/fila[$r]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa16/propiedad[@claveinformativa = '1200211']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa16/propiedad[@claveinformativa = '1200212']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa16/propiedad[@claveinformativa = '1200213']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingcobsinimppag'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa16/propiedad[@claveinformativa = '1200214']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrabasiva16pag'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa16/propiedad[@claveinformativa = '1200215']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impraiva16pag'" />
						<xsl:with-param name="ValorAtributo" select="$gridTasa16/propiedad[@claveinformativa = '1200216']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'iva16factemitidastipoing'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200209']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'iva16factemitidastipopago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200217']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IvaACargoTasa16'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A62']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
			},
		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ivacargoestimulorf'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200325']" />
			<!--1200107-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detivacargoestimulorf": [
		<xsl:if test=" count(//entidad[@clave='SAT_r2101105']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_r2101105']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="q" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200301']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200302']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200303']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200304']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200305']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200306']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impuestostrasladadosiva8'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200307']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ivacargoestimulorf'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200308']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrabasiva8ing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200309']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:variable name="gridEstimuloRf" select="//entidad[@clave='SAT_r2101112']/fila[$q]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstimuloRf/propiedad[@claveinformativa = '1200311']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstimuloRf/propiedad[@claveinformativa = '1200312']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstimuloRf/propiedad[@claveinformativa = '1200313']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingcobsinimppag'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstimuloRf/propiedad[@claveinformativa = '1200314']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrabasiva8pag'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstimuloRf/propiedad[@claveinformativa = '1200315']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impraiva8pag'" />
						<xsl:with-param name="ValorAtributo" select="$gridEstimuloRf/propiedad[@claveinformativa = '1200316']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'iva8factemitidastipoing'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200310']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'iva8factemitidastipopago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200317']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>

		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totalivacargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200108']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ivanocobradopordevdescybonif'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200109']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detivanocobradopordevdescybonifventas": [
		<xsl:for-each select="//entidad[@clave='SAT_1200400']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200401']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200402']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200403']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200404']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200405']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200406']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestostrasladadosiva8'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200407']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestostrasladadosiva16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200408']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'iva8facturasegreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200409']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'iva16facturasegreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200410']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ivanocobradopordevdescybonif'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200411']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ivaretenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'AA64']" /><!--1200110-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detivaretenido": [
		<xsl:if test=" count(//entidad[@clave='SAT_r2101262']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_r2101262']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="s" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200501']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200502']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200503']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200504']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200505']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200506']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impuestosretenidosiva'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200507']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ivaretenido'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200508']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:variable name="gridIvaRetenido" select="//entidad[@clave='SAT_r2101269']/fila[$s]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="$gridIvaRetenido/propiedad[@claveinformativa = '1200510']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridIvaRetenido/propiedad[@claveinformativa = '1200511']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="$gridIvaRetenido/propiedad[@claveinformativa = '1200512']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingcobsinimppag'" />
						<xsl:with-param name="ValorAtributo" select="$gridIvaRetenido/propiedad[@claveinformativa = '1200513']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impretivapag'" />
						<xsl:with-param name="ValorAtributo" select="$gridIvaRetenido/propiedad[@claveinformativa = '1200514']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ivaretentipoing'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200509']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ivaretentipopago'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200515']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'MontoADetallar'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '220749']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'PorEnajenacionDeBienes'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '220747']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'PorOtrasOperaciones'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '220748']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
		</xsl:if>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ivaacreditableperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400113']" />	<!--1200111-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detivaacreditableperiodo":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ivapagadogastosyadquisiciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200601']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ivaactividadesgravdasytasa0'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200602']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ivaactividadesmixtas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200603']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ivaacreditableperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200604']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ivanoacreditable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200605']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detivapagadogastosyadquisiciones":
		[
		<xsl:if test=" count(//entidad[@clave='SAT_1200700']/fila) &gt; 0" >
			{
			<xsl:for-each select="//entidad[@clave='SAT_1200700']">
				<xsl:for-each select="fila">
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200701']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200702']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200703']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200704']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200705']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200706']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impuestostrasladadosiva8'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200707']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impuestostrasladadosiva16'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200708']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'iva8facturasingreso'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200709']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'iva16facturasingreso'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200710']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'ivapagadogastosyadquisiciones'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200711']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:for-each select="//entidad[@clave='SAT_1200712']">
				<xsl:for-each select="fila">
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mescfdipago'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200712']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpag'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200713']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpag'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200714']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imppagsimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200715']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrasivapag8'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200716']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imptrasivapag16'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200717']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'iva8factrecibidastipoing'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200718']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'iva16factrecibidastipopago'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200719']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			}
		</xsl:if>
		]
		},
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ivadevdescybonifengastos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200112']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"Detivadevdescybonifengastos": [
		<xsl:for-each select="//entidad[@clave='SAT_1200800']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200801']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200802']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200803']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200804']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200805']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200806']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestostrasladadosiva8'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200807']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestostrasladadosiva16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1200808']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'iva8facturasegreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200809']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'iva16facturasegreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200810']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ivapordevdescybonifgastos'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200811']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Cantidadcargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A68']" /><!--1200113-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Acreditamientosaldofavorperiodosant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A72A']" /><!--1200114-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Impuestocargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A73']" /><!--1200115-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Impuestofavor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A71']" /><!--1200116-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'modprellenado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200117']" />
			<!--  -->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'devoluinmediobte'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A70']" />	<!--1200118  -->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestoafavor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200119']" /><!-- OK -->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ValorActosOActividadesGravadosTasa0Exp'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200120']" /><!-- OK -->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ValorActosOActividadesGravadosTasa0Otros'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200121']" /><!-- OK -->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'SumaActosOActividadesGravados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200122']" /><!-- OK -->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ValorActosActividadesNoSeDebaPagarElImpuestoExe'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200123']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ValorDeLosActosNoObjetoDelImpuesto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200124']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaACargoNoCobradoAplicacionDelEstimuloRegionFronteriza'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200125']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IvaACargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200126']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CantidadActualizadaAReintegrarseDerivadaDelAjuste'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200127']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrasCantidadesACargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A66']" />
			<!--66-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrasCantidadesAFavor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A67']" />
			<!--67-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ValorActActAplicaEstFisActiEcoProIntPODEBI'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200132']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetAcreditamientoSaldoAFavorIVAPeriodosAnteriores": [
		<xsl:for-each select="//entidad[@clave='SAT_IVAN1']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'MontoPorDetallar'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN1']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'PeriodicidadComp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN2']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'PeriodoComp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN4']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'EjercicioComp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN3']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SaldoAAplicar'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN5']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TipoDeclaracionComp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN6']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionComp'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN7']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentoDeclaSaldoFavor'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN8']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'MontoSaldoFavorOrig'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN9']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'RemanenteHistAntesAplica'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IVAN10']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestoACargo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'A73']" />	<!--73-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		"DetValorActosActividadesEmitidosPODEBItipoIngreso": [
		<xsl:for-each select="//entidad[@clave='SAT_r2101121']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'MesPagoUnaExh'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300101']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladasPagoUnaExh'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300102']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentesPagoUnaExh'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300103']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300104']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300105']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300106']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBasePODEBIPagoUnaExh'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300107']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000001A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000002A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000003A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000004A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000005A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalimptraspodebitingr'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000006A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101121']/@titulolargo" /><!--TODO:Clave pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'entidadori'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101121']/@clave" /><!--TODO:Clave pendiente-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		"DetValorActosActividadesEmitidosPODEBITipoPago": [
		<xsl:for-each select="//entidad[@clave='SAT_r2101128']">
			<xsl:for-each select="fila">
				{
				<xsl:variable name="q" select="position()" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300108']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300109']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300110']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:variable name="gridPodebiEmitido" select="//entidad[@clave='SAT_r2101128']/fila[$q]" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IngresosCobradosSinImpuestos'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300111']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBasePODEBI'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300112']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIvaFacturasEmitidasTipoIngresoInteriorLosPODEBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300113']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIvaFacturasEmitidasTipoPagoInteriorLosPODEBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300114']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ValorActEmitidosPODEBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300115']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ValActRecEstFisActEcoProPODEBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300116']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000007A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000008A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000009A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalimtraladadospodebitpago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000010A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101128']/@titulolargo" /><!--TODO: Clave pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'entidadori'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101128']/@clave" /><!--TODO: Clave pendiente-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		"DetValorActosActividadesGravadasEstimuloRF": {
		"RFNorte":{

		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoPorDetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400318']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'InteresesPagadosRfn'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400319']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'RegaliasPagadasEntrePartesRelacionadasRfn'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400320']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrosActosActividadesPagadosRfn'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400321']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoDetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200318']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'InteresesCobradosSujetosEstimuloLaRfn'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56AABIS']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'RegaliasEntrePartesRelacionadasSujetosEstimuloLaRfn'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56BBBIS']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrosActosActividadesGravadosSujetosEstimuloLaRfn'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56CCBIS']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		} ,

		"RFSur":{

		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'InteresesPagadosRfs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400322']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'RegaliasPagadasEntrePartesRelacionadasRfs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400323']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrosActosActividadesPagadosRfs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400324']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'InteresesCobradosSujetosEstimuloLaRfs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56AABIS1']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'RegaliasEntrePartesRelacionadasSujetosEstimuloLaRfs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56BBBIS1']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'OtrosActosActividadesGravadosSujetosEstimuloLaRfs'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '56CCBIS1']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		}
		},
		"DetValorActosActividadesRecibidosPODEBITipoIngreso": [
		<xsl:for-each select="//entidad[@clave='SAT_r2101136']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'MesPue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300201']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladasPue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300202']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentesPue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300203']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300204']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300205']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300206']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBasePODEBIPue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300207']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000001B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000002B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000003B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000004B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000005B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalimptraspodebitingr'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000006B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101136']/@titulolargo" /><!--TODO:CLAve pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'entidadori'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101136']/@clave" /><!--TODO:CLAve pendiente-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		"DetValorActosActividadesRecibidosPODEBITipoPago": [
		<xsl:for-each select="//entidad[@clave='SAT_r2101143']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300209']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300210']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300211']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IngresosCobradosSinImpuestos'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300212']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestosTrasladadosBasePODEBI'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1300213']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIvaFacturasEmitidasTipoIngresoInteriorLosPODEBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300214']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'BaseIvaFacturasEmitidasTipoPagoInteriorLosPODEBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300215']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ValorActRecibidosPODEBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300216']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'valoractactaplestfisfmeproeco'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1300217']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000007B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000008B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000009B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalimtraladadospodebitpago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '5000010B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101143']/@titulolargo" /><!--TODO:CLavePendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'entidadori'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101143']/@clave" /><!--TODO:CLavePendiente-->
					<xsl:with-param name="Tipo" select="'intString'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		"IVAPagadoSujetoEstimuloRF": [
		<xsl:for-each select="//entidad[@clave='SAT_r2101241']">
			<xsl:for-each select="fila">
				{
				<xsl:variable name="t" select="position()" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400801']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400802']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400803']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400804']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400805']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400806']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladadosBase8'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400807']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladadosIva8'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400808']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:variable name="gridIvaEstimuloRF" select="//entidad[@clave='SAT_r2101249']/fila[$t]" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes2'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaEstimuloRF/propiedad[@claveinformativa = '1400809']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas2'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaEstimuloRF/propiedad[@claveinformativa = '1400810']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes2'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaEstimuloRF/propiedad[@claveinformativa = '1400811']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IngresosCobradoSinImpuestos'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaEstimuloRF/propiedad[@claveinformativa = '1400812']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladados2Base8'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaEstimuloRF/propiedad[@claveinformativa = '1400813']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladados2Iva8'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaEstimuloRF/propiedad[@claveinformativa = '1400814']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Iva8FacturaRecibidasTipoIngreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400815']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Iva8FacturasRecibidasTipoPago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400816']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IvaPagadoSujetoEstimuloLaRegionFronteriza'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400817']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		"IVAPagadoTasa16": [
		<xsl:for-each select="//entidad[@clave='SAT_r2101225']">
			<xsl:for-each select="fila">
				{
				<xsl:variable name="l" select="position()" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400701']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400702']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400703']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400704']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400705']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuento'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400706']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladadosBase16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400707']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladadosIva16'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1400708']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:variable name="gridIvaPagado" select="//entidad[@clave='SAT_r2101233']/fila[$l]" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes2'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaPagado/propiedad[@claveinformativa = '1400709']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasCanceladas2'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaPagado/propiedad[@claveinformativa = '1400710']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroFacturasVigentes2'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaPagado/propiedad[@claveinformativa = '1400711']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IngresosCobradoSinImpuestos'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaPagado/propiedad[@claveinformativa = '1400712']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladados2Base16'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaPagado/propiedad[@claveinformativa = '1400713']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpTrasladados2Iva16'" />
					<xsl:with-param name="ValorAtributo" select="$gridIvaPagado/propiedad[@claveinformativa = '1400714']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>

				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Iva16FacturaRecibidasTipoIngreso'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400715']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Iva16FacturasRecibidasTipoPago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1400716']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalLosActosActividadesPagadosTasa16'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '36A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ValorActosActiMitidosPODEBI'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200128']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ValorActosOActiRecibidosPODEBI'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1200129']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetValorActosActGravadosDiferenteIVATipoIngresoDeterminacionIVA":[{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'entidadori'" />
			<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101262']/@clave" /><!--TODO: Clave Pendiente-->
			<xsl:with-param name="Tipo" select="'intString'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalnumfacCantipoingreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700001P']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalnumfacVigtipoingreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700002P']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalSubtotaltipoingreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700003P']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalDescuentotipoingreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700004P']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalSubtotalDescuentotipoingreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700005P']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalimptrsbaseivaexeting'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700030P']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		}],
		"DetValorActosActGravadosDiferenteTasaIVATipoPagoDeterminacionIVA":[{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'entidadori'" />
			<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_r2101269']/@clave" /><!--TODO: Clave Pendiente-->
			<xsl:with-param name="Tipo" select="'intString'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalnumfactCan'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700011N']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalnumfaVig'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700012N']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totalingcobinimp'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700013N']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalivaretenidotpago'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4700032N']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		}],		
		}
		}
	</xsl:template>

	<xsl:template name="GeneraAtributo">
		<xsl:param name="Nombre" />
		<xsl:param name="ValorAtributo" />
		<xsl:param name="Tipo" />
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='int'" >
			"<xsl:value-of select="$Nombre" />":<xsl:value-of select="number($ValorAtributo)" />,
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='intString'" >
			"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="$ValorAtributo" />",
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='string'" >
			"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="translate($ValorAtributo,translate($ValorAtributo,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890áéíóúÁÉÍÓÚ',''),'')" />",
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='date'" >
			<xsl:choose>
				<xsl:when test="contains($ValorAtributo,'Z')" >
					"<xsl:value-of select="$Nombre" />": "<xsl:value-of select="substring-before($ValorAtributo,'Z')" />",
				</xsl:when>
				<xsl:otherwise>
					"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="$ValorAtributo" />",
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='date2'" >
			<xsl:choose>
				<xsl:when test="contains($ValorAtributo,'T')" >
					"<xsl:value-of select="$Nombre" />": "<xsl:value-of select="substring-before($ValorAtributo,'T')" />",
				</xsl:when>
				<xsl:otherwise>
					"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="$ValorAtributo" />",
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='datetimeCeroHoras'" >
			<xsl:choose>
				<xsl:when test="string-length($ValorAtributo) > 10" >
					"<xsl:value-of select="$Nombre" />": "<xsl:value-of select="substring($ValorAtributo,0, 11)" />T00:00:00" ,
				</xsl:when>
			</xsl:choose>
		</xsl:if>
	</xsl:template>


</xsl:stylesheet>