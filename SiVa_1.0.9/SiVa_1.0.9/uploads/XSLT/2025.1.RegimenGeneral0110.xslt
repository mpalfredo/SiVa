<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:output method='json' omit-xml-declaration="yes" />

	<xsl:template match="/">
		{
		"idconceptopago":"0110",
		"descconceptopago": "ISR personas físicas Arrendamiento de inmuebles",
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
			<xsl:with-param name="Nombre" select="'accesoriosdistintosdelasmultas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C10A']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalcontribuciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C11']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'creditoalsalario'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C12']" />
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
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'compensaciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C13']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
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
		},<!--Cierre llave pago-->
		<xsl:if test=" count(//entidad[@clave='SAT_ISR_COM']/fila) &gt; 0" >
			"Compensaciones": [
			<xsl:for-each select="//entidad[@clave='SAT_ISR_COM']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'tipocompensacion'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1302']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'desccompensacion'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1302']/@etiqueta" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'periodicidadComp'" />
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
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'fechacausacioncomp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1315']" />
						<xsl:with-param name="Tipo" select="'date'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numerooperacioncausa'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1306']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'conceptodelacomp'" />
						<xsl:with-param name="ValorAtributo" select="substring(propiedad[@claveinformativa = 'C1307'],0,5)" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'saldoaaplicar'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1308']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'tipodeclaracioncomp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C1309']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numerooperacioncomp'" />
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
						<xsl:with-param name="ValorAtributo" select="@orden" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					"cveconceptoaplicocompensa" :"0110",
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'total'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C13']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>

		<xsl:if test=" count(//entidad[@tipo='SAT_OTROS_ESTIMULOS']/fila) &gt; 0" >
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
		</xsl:if>
		
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
		<xsl:if test=" count(//entidad[@clave='SAT_DADETGFADM001']/fila) &gt; 0" >
			"DetComprasYGastosFacturadosDelMes":[
			<xsl:for-each select="//entidad[@clave='SAT_DADETGFADM001']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="k" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGFADM001']" /><!--1010001bis-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGFADMNFC002']" /><!--1010002bis-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGFMNFV003']" /><!--1010003bis-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGFMS004']" /><!--1010004bis-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGFMD005']" /><!--1010005bis-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGFMSD006']" /><!--1010006bis-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuentofacturasingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010007']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<!--<xsl:call-template name="GeneraAtributo">
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
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotdesccfdiing'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010013']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingcobsinimp'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1010014']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>-->
					<xsl:variable name="gridGastosCompras" select="//entidad[@clave='SAT_DADETGFMPCM001']/fila[$k]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mestipopago'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosCompras/propiedad[@claveinformativa = 'DADETGFMPCM001']" /><!--1010009-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanpago'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosCompras/propiedad[@claveinformativa = 'DADETGFMPCM002']" /><!--1010010-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigpago'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosCompras/propiedad[@claveinformativa = 'DADETGFMPCM003']" /><!--1010011-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'imppagsinimp'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosCompras/propiedad[@claveinformativa = 'DADETGFMPCM004']" /><!--3000010-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactingcobsinimppago'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosCompras/propiedad[@claveinformativa = '1010012']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>

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

					<xsl:variable name="gridGastosComprasSec2" select="//entidad[@clave='SAT_DADETGFMPCM001']/fila[$k]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'importepagadosinimpuestocfdi'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosComprasSec2/propiedad[@claveinformativa = '1010015']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'importepagadosinimpuesto'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosComprasSec2/propiedad[@claveinformativa = '1010016']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'gatosfacturadosdelmes'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosComprasSec2/propiedad[@claveinformativa = '1010017']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuentosdacturadodelmes'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosComprasSec2/propiedad[@claveinformativa = '1010018']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'gastosfacturadosdelmes'" />
						<xsl:with-param name="ValorAtributo" select="$gridGastosComprasSec2/propiedad[@claveinformativa = '1010019']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalnumfaccanceladas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETSD006']" /><!--1100524-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totalnumfacvigentes'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETSD007']" /><!--1100525-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Totalingcobrsinimp'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETSD008']" /><!--1100526-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			]
		</xsl:if>
		},
		"DetDescBoniFacturadasMes":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'mes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETDFMM001']" /> <!--1011001bis-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETDFMFC002']" /><!--1011002bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETDFMFV003']" /><!--1011003bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETDFMS004']" /><!--1011004bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETDFMD003']" /><!--1011005bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETDFMSD003']" /><!--1011006bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'mes2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFMTE001']" /><!--1011007bis-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturascanceladas2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFMTE002']" /><!--1011008bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturasvigentes2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFMTE003']" /><!--1011009bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotal2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFMTE004']" /><!--1011010bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuento2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFMTE005']" /><!--1011011bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldescuento2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFMTE006']" /><!--1011012bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuentofacturastipoingreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDFETI001']" /><!--1011013bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldtofacturasegreso'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDFETI002']" /><!--1011014bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'devolucionesdtosbonificacionesmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDFETI003']" /><!--1011015bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumerodefacturascan'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDFMTI001']" /><!--3500008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumerodefacturasvig'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDFMTI002']" /><!--3500009-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalsubtotalcfdi'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDFMTI003']" /><!--3500010-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldescuentocfdi'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDFMTI004']" /><!--3500011-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalsubtotaldescuentocfdi'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDFMTI005']" /><!--3500012-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumerofacturascan'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDDFTE001']" /><!--3500013-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumerofacturasvig'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDDFTE002']" /><!--3500014-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalsubtotal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDDFTE003']" /><!--3500015-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDDFTE004']" /><!--3500016-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalsubtotaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETTDDFTE005']" /><!--3500017-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'gastosnodeduciblesdelmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1011016']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'gastosdelmesnoconsideradosenprellenado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1011017']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'gastosdelmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1011018']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'facturasegresorecibidasporgasto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1011019']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetFacturasEgresosRecibidas":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'mes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFDERGMM001']" /><!--1012001bis-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturascanceladas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFDERGMNFC002']" /><!--1012002bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numfacturasvigentes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFDERGMNFV003']" /><!--1012003bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = '1012008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFDERGMS004']" /><!--1012004bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'descuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFDERGMS005']" /><!--1012005bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'DADETFDERGMS006']" /><!--1012006bis-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'factsegresoscomprasygastosmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1012007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'facurasegresosgastosmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETFEGMFRM001']" /><!--4300007-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'gastosperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETGPGP007']" /><!--4300008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'gastosmesant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETGPGMADP007']" /><!--4300009-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetComprasYGastosMeses":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1013004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_DADETGMADPM001']/fila) &gt; 0" >
			"DetComprasYGastosMesesAnt": [
			<xsl:for-each select="//entidad[@clave='SAT_DADETGMADPM001']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGMADPM001']" /><!--1013001bis-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'comprasygastos'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1013002']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'estatus'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGMADPE003']" /><!--1013003bis-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'comprasygastosmesesantpagadas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1013005']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotCompraGastAcumulaDeclaracionPresentadEjerciciAnterior'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETGMADPT001']" /><!--1013006-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGMADPN004']" /><!--1013007-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETGMADPFP005']" /><!--1013008-->
						<xsl:with-param name="Tipo" select="'date2'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'gastos'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1013009']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'arrgastmesant'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETGMADPGMA002']" /><!--1013010-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'deduccinversiones'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADI003']" /><!--1013011-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totaldegastosdelperiodo'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1013012']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			]
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_DADETGMADPM001']/fila) = 0" >
			"DetComprasYGastosMesesAnt": [			
					{					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'comprasygastosmesesantpagadas'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1013005']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotCompraGastAcumulaDeclaracionPresentadEjerciciAnterior'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETGMADPT001']" /><!--1013006-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>					
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'arrgastmesant'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETGMADPGMA002']" /><!--1013010-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'deduccinversiones'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADI003']" /><!--1013011-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totaldegastosdelperiodo'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1013012']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} 				
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
		}, <!--Cierre DetComprasYGastosDelPeriodo-->
		<xsl:choose>
			<xsl:when test="count(//entidad[@clave='SAT_1024001']/fila) > 0">
				"DetGastosNomNoConsEnPrellenado":[
				<xsl:for-each select="//entidad[@clave='SAT_1024001']">
					<xsl:for-each select="fila">
						{
						<xsl:variable name="j" select="position()" />
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
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024004']" />
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

						<xsl:variable name="segundoGridNoOp" select="//entidad[@clave='SAT_1024001']/fila[$j]" />
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
							<xsl:with-param name="ValorAtributo" select="$segundoGridNoOp/propiedad[@claveinformativa = '1024009']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
							<xsl:with-param name="ValorAtributo" select="$segundoGridNoOp/propiedad[@claveinformativa = '1024010']" />
							<xsl:with-param name="Tipo" select="'dateEsquema'" />
						</xsl:call-template>
						<xsl:call-template name="GeneraAtributo">
							<xsl:with-param name="Nombre" select="'TotGastNominAcumulDeclaraPresenEjercAnterior'" />
							<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1024008']" />
							<xsl:with-param name="Tipo" select="'int'" />
						</xsl:call-template>
						} ,
					</xsl:for-each>
				</xsl:for-each>
				],
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
				}],
			</xsl:otherwise>
		</xsl:choose>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'DeduccionInmediataInversiones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2000020']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'deduinminver'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1014050']" /><!--1014008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tienesfaciliadmestiaplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2700005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tipodeduccionaplicaduranteejer'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DATDADEEOO1']" /><!--3500006-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'gastosperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DAGDP002']" /><!--3500007-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetDeduccionesInversiones": [
		<xsl:for-each select="//entidad[@clave='SAT_DADETDIM001']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETDIM001']" /><!--4500001b-->
					<!--TODO:Tiene 3 claves para seleccionar-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETDIE003']" /><!--4500002b-->
					<!--TODO:Tiene 3 claves para seleccionar-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerooperaciondecla'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETDINO004']" /><!--4500003b-->
					<!--TODO:Tiene 3 claves para seleccionar-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'fechapresentaciondecla'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETDIFP005']" /><!--4500004b-->
					<!--TODO:Tiene 3 claves para seleccionar-->
					<xsl:with-param name="Tipo" select="'date'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionnversiones'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETDIDI002']" /><!--4500005-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionnversionesmesant'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDIDIMA002']" /><!--4500006-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionnversionesmes'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDIDIM003']" /><!--4500007-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionesinversionesperiodo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDIDIP004']" /><!--4500008-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionopcional'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETDODO002']" /><!--4500009-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionopcionamesant'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETDODOMADP002']" /><!--4500010-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionopcionames'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDODOM003']" /><!--4500011-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'deduccionopcionalperiodo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDODOP004']" /><!--4500012-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestopredial'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4500013']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestopredialmesant'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETIPIP002']" /><!--4500014-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestopredialmes'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETIPIPM003']" /><!--4500015-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestopredialmesperiodo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETIPIPP004']" /><!--4500016-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'tipoestimulo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETEDTE001']" /><!--4500017-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estimuloautorizado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETEDEA002']" /><!--4500018-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'poraplicarper'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DADETEDAP003']" /><!--4500019-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'deduccionopcional'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADO004']" /><!--4600001-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DADETDIT001']" /><!--4600002b-->
			<!--TODO: Tiene 3 valores-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestopredial'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DAIP004']" /><!--4600003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tieneestimuloaplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DATEA005']" /><!--4600004-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estimulodisminuir'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DAED006']" /><!--4600005-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalestimuloautorizado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DATDETEDTE001']" /><!--4600006-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalporaplicarperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DATDETEDTA002']" /><!--4600007-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldeduccionesautorizadas2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DATDA007']" /><!--4600008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		}, //<!--Cierre deducciones-->	

		"IngresosRCPF":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngresosCobradosMes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGCM002']" /><!--1100101-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngresosADisminuir'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGDM004']" /><!--1100102-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngresosAdicionales'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100103']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngresosCobradosAmparados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100104']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ingresosobtenidoscopropiedad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100105']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Devoludescuenbonifica'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100106']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Montopordetaingreperciacti'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100501']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Montodetaingreperciacti'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100502']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosFacturados":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingresoscobrados'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100208']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosFacturadosMes": [
		<xsl:if test=" count(//entidad[@clave='SAT_1100201']/fila) &gt; 0" >
			{
			<xsl:for-each select="//entidad[@clave='SAT_1100201']">
				<xsl:for-each select="fila">
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100201']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100202']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100203']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100204']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100205']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100206']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
			<xsl:for-each select="//entidad[@clave='SAT_1100209']">
				<xsl:for-each select="fila">
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mesfechapago'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100209']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcaningfacmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100210']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigingfacmes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100211']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingcobsinimp1'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100212']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'subtotdesccfdiing'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100207']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'ingcobsinimp'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100213']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			},
		</xsl:if>
		]
		},
		<xsl:if test=" count(//entidad[@clave='SAT_1100601']/fila) &gt; 0" >
			"DetDevolucionDescBonifFact":[
			<xsl:for-each select="//entidad[@clave='SAT_1100601']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100601']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactcanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100602']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numfactvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100603']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100604']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100605']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100606']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'desdevoboniampacomprofiscaegre'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100607']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'desdevoboniintecopropi'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100608']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totdesdevbonampcompfiscaegre'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100609']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_DETIDM001']/fila) &gt; 0" >
			"DetIngresosDisminuir":[
			<xsl:for-each select="//entidad[@clave='SAT_DETIDM001']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'concepto'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETIDM001']" /><!--1100301-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'importe'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETIDM002']" /><!--1100302-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingresosdisminuir'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETIDM003']" /><!--1100303-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_DETIADM001']/fila) &gt; 0" >
			"DetIngresosAdicionales":[
			<xsl:for-each select="//entidad[@clave='SAT_DETIADM001']">
				<xsl:for-each select="fila">
					{
					<xsl:variable name="l" select="position()" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'concepto'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETIADM001']" /><!--1100401-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'importe'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETIADM002']" /><!--1100402-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingresosadicionales'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETIADM003']" /><!--1100403-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					
					<xsl:variable name="sGIngAdicionales" select="//entidad[@clave='SAT_1024001']/fila[$l]" />
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="$sGIngAdicionales/propiedad[@claveinformativa = 'DETINMA001']" /><!--1600004-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Ingresos'" />
						<xsl:with-param name="ValorAtributo" select="$sGIngAdicionales/propiedad[@claveinformativa = 'DETINMA002']" /><!--1600005-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Estatus'" />
						<xsl:with-param name="ValorAtributo" select="$sGIngAdicionales/propiedad[@claveinformativa = 'DETINMA003']" /><!--1600006-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numerooperacionpre'" />
						<xsl:with-param name="ValorAtributo" select="$sGIngAdicionales/propiedad[@claveinformativa = 'DETINMA004']" /><!--1600007-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'fechapresentacionpre'" />
						<xsl:with-param name="ValorAtributo" select="$sGIngAdicionales/propiedad[@claveinformativa = 'DETINMA005']" /><!--1600008-->
						<xsl:with-param name="Tipo" select="'date2'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ingrdelmesant'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETINMA007']" /><!--1600009-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'conceptous'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1600010']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'importeus'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1600011']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_1100503']/fila) &gt; 0" >
			"DetIngresosPercibPorAct":[
			<xsl:for-each select="//entidad[@clave='SAT_1100503']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'concepto'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100503']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'importe'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100504']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					} ,
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		"DetIngresosCobradosMes":[
		<xsl:for-each select="//entidad[@clave='SAT_DETICMEUSE001']">
			<xsl:for-each select="fila">
				{	
				<xsl:variable name="i" select="position()" />
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mespue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETICMEUSE001']" /><!--1500001-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfaccanpue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETICMEUSE002']" /><!--1500002-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfacvigpue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETICMEUSE003']" /><!--1500003-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subtotalpue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETICMEUSE004']" /><!--1500004-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'descuentopue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETICMEUSE005']" /><!--1500005-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subdespue'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DETICMEUSE006']" /><!--1500006-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				
				<xsl:variable name="segundoGridIngCob" select="//entidad[@clave='SAT_DETICMPM001']/fila[$i]" />	
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mestippag'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIngCob/propiedad[@claveinformativa = 'DETICMPM001']" /><!--1500007-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfaccantippag'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIngCob/propiedad[@claveinformativa = 'DETICMPM002']" /><!--1500008-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numfacvigtippag'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIngCob/propiedad[@claveinformativa = 'DETICMPM003']" /><!--1500009-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingcobsinimp'" />
					<xsl:with-param name="ValorAtributo" select="$segundoGridIngCob/propiedad[@claveinformativa = 'DETICMPM004']" /><!--1500010-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subtotfacemitiping'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICM001']" /><!--1500011-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingcobsinimps'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICM002']" /><!--1500012-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingcobmes'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICM003']" /><!--1500013-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],		
		"DetTotalIngresosPeriodo":[
		<xsl:for-each select="//entidad[@clave='SAT_1006001']"><!--Nota: Estas claves no estan en este formulario-->
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesesantregionfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006001']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesregionfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosregionfronteriza1'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006003']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesesantnoregionfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006004']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesnoregionfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006005']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosnosujetosaregionfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006006']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalingresos1'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006007']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosregionfronteriza2'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006008']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalingresos2'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006009']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'proporcioningresosregfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1006010']" />
					<xsl:with-param name="Tipo" select="'stringPunto'" />
				</xsl:call-template>
				} ,
			</xsl:for-each>
		</xsl:for-each>
		],		
		"DetIngresosNominales":{		
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605001']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontDetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontDetallado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenReg'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenRegFS'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenRegFron'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'SujeEstiRegion'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},	
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Tusingfueobtcoposoccon'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGSC001']" /><!--1100505-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Tieingadisdelmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGDM003']" /><!--1100506-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Tieingadicdelmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGADM005']" /><!--1100507-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingdelmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGDM007']" /><!--1100508-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingdemesant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGMA008']" /><!--1100509-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<!--<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totingdelper'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'TINGP009']" />--><!--1100510 Ver. 25c--><!--
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>-->
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingmesexdenregfron'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100511']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingmesnosubjestiregfron'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100512']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingexen'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100513']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosExentos":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totalingexentos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1900006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingexemesant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1900007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'inguniperi'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1900009']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosExentosMes":[
		<xsl:for-each select="//entidad[@clave='SAT_1900001']"> <!--Nota: Estas claves no estan en este formulario-->
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1900001']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Ingresosexentos'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1900002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1900003']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Numerooperacionprellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1900004']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'fechapresentacionprellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1900005']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingexedelmes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1900008']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		]
		},
		"DetTotalesIngresosCobradosMes": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumfaccanceladasarr'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMEUSE007']" /><!--1100514-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumfacvigentesarr'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMEUSE008']" /><!--1100515-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalsubtotal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMEUSE009']" /><!--1100516-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMEUSE010']" /><!--1100517-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalsubtotaldescuento'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMEUSE011']" /><!--1100518-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumfactcan'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMPM005']" /><!--1100519-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalnumfactvig'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMPM006']" /><!--1100520-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totalingcobrsinimparr'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETICMPM007']" /><!--1100521-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingadidelmes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INGADM006']" /><!--1100522-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingadimesarren'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DETINMA006']" /><!--1100523-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosMesesAnt": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingmesant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2400009']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingmesesantexclusivosdentrorf'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2400010']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingmesesantnosujetosestimulorf'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2400011']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingmesesantsolodeclapagadas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2400012']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosMesesAnteriores":[
		<xsl:for-each select="//entidad[@clave='SAT_2400001']"> <!--Nota: Estas claves no estan en este formulario-->
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400001']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingxclusivosdentrodelarfn'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingexclusivosdentrodelarfs'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400003']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingdelmesnosujetosalestimulo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400004']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresos'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400005']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400006']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerooperacionprellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400007']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'fechapresentacionprellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2400008']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ingresdemesesantsolodedeclpagas'" />
			<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100539']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'optasporelcalculoacumulado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'OPCA001']" /><!--1100534-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetIngresosMes":[
		<!--<xsl:for-each select="//entidad[@clave='SAT_1100107']"> --><!--Nota:Estas claves no estan en esta plantilla--><!--
			<xsl:for-each select="fila">-->
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmes'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEINM001']" /><!--1004001-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'montodetallar'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEINM002']" /><!--1004002-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'montodetallado'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEINM003']" /><!--1004003-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesrfn'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEINM004']" /><!--1004004-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesrfs'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEINM005']" /><!--1004005-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresomesregionfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEINM006']" /><!--1004006-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesnoregionfronteriza'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEINM007']" /><!--1004007-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalimportePOINBI'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100538']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				} ,
			<!--</xsl:for-each>
		</xsl:for-each>-->
		],
		"DetTotalIngresosEfectCobradosPeriodo":[
		<xsl:for-each select="//entidad[@clave='SAT_5100001']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mesting'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100001']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerodefaccanceting'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerodefacvigting'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100003']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotalting'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100004']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuentoting'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100005']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubtotalDescuentoting'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100006']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mestpag'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100007']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerodefaccancetpag'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100008']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerodefacvigtpag'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100009']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Subtotaltpag'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100010']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Descuentotpag'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100011']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresicobradosinimpu'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '5100012']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ClaveEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_5100001']/@clave" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				}
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totingreefectivamentecobrado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100535']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingampcomfisefecobra'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100536']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingresosperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1100537']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		}, <!--Cierre IngresosRCPF-->		
		"DatosAdicionalesRCPF":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingresosobtenidos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'ARRCOP02']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'rfcrepresentantecomun'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'ARRCOP03']" />
			<xsl:with-param name="Tipo" select="'string2'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'porcentajeparticipacopropiedad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'ARRCOP14']" />
			<xsl:with-param name="Tipo" select="'stringPorcentaje'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingresosobtenidos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'ARRCOP04']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalisrpagado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/fila[1]/propiedad[@claveinformativa = 'ARRCOP05']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetDatosAdicionalesRCPF" :[
		<xsl:for-each select="//entidad[@clave='SAT_ARRCOP08']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'rfcintegrante'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'ARRCOP08']" />
					<xsl:with-param name="Tipo" select="'string2'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'porcentajeparticipacopropiedad'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'ARRCOP09']" />
					<xsl:with-param name="Tipo" select="'stringPunto'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalingresosobtenidosintegrante'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'ARRCOP10']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'isrpagadoejerciciointegrante'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'ARRCOP11']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalporcentajeparticipacion'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4100001']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalisrpagadoporleintegrante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4100002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingreobtenidosintegrante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4100003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingobtpointegrante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4100004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalisrpagadointegrante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4100005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingresosobtenidosporintegrante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4100006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalisrpagadoporintegrante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '4100007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		}, <!--Cierre datos adicionales rcfp-->
		"DeterminacionRCPF": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIngresosPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101001']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngresosExentos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'BaseGravable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>

		<xsl:variable name="TasaAplicable">
			<xsl:value-of select="translate(//entidad/propiedad[@claveinformativa = '1101004'], '%','')"/>
		</xsl:variable>

		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TasaAplicable'" />
			<xsl:with-param name="ValorAtributo" select="$TasaAplicable" />
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoMensual'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ISRRetenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoCargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101111']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ingreexcluactiagricoganasilvipes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ingresosderechoautor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101009']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ingresosexentosderechoautor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101010']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ingresosperido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101011']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosCobradosYAmparados":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'total'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101103']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ingresosmesesanteriores'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101104']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetIngresosCobradosYAmparadosTot" :[
		<xsl:for-each select="//entidad[@clave='SAT_1101105']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101101']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresos'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101102']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'total'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101103']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ingresosmesesanteriores'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101104']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'actividadempresarial'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101105']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'serviprofehonorarios'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101106']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'serviprofederechoautor'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101107']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'actiagricoganadesilvicopesquera'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101108']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'enajeactifijoterrepropafecactivi'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101109']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template><xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'usogocetemporalbienes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101110']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		]
		},
		"DetISRRetenidoPF":{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'isrretenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTISRR002']" /><!--1101209-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetISRRetenidoTot":[{
		<!-- <xsl:if test=" count(//entidad[@clave='SAT_1101201']/fila) &gt; 0" >
			<xsl:for-each select="//entidad[@clave='SAT_1101201']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101201']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'facturascanceladas'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101202']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'facturasvigentes'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101203']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101204']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'descuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101205']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'subtotaldescuento'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101206']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'impuestoretenidoisr'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101207']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'isrretenidoingreso'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101208']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:if test=" count(//entidad[@clave='SAT_1101210']/fila) &gt; 0" >
						<xsl:for-each select="//entidad[@clave='SAT_1101210']">
							<xsl:for-each select="fila">
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'mesfechapago'" />
									<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101210']" />
									<xsl:with-param name="Tipo" select="'string'" />
								</xsl:call-template>
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'numfactcaningfacmes'" />
									<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101211']" />
									<xsl:with-param name="Tipo" select="'int'" />
								</xsl:call-template>
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'numfactvigingfacmes'" />
									<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101212']" />
									<xsl:with-param name="Tipo" select="'int'" />
								</xsl:call-template>
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'ingcobsinimp2'" />
									<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101213']" />
									<xsl:with-param name="Tipo" select="'int'" />
								</xsl:call-template>
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'impretisrfactvig'" />
									<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101214']" />
									<xsl:with-param name="Tipo" select="'int'" />
								</xsl:call-template>
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'isrretfacpago'" />
									<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101215']" />
									<xsl:with-param name="Tipo" select="'int'" />
								</xsl:call-template>
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'isrretnoacredi'" />
									<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101216']" />
									<xsl:with-param name="Tipo" select="'int'" />
								</xsl:call-template>
								<xsl:call-template name="GeneraAtributo">
									<xsl:with-param name="Nombre" select="'TotImpReteAcumuDeclara'" />
									<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101217']" />
									<xsl:with-param name="Tipo" select="'int'" />
								</xsl:call-template>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:if>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'isrretenidoadicionar'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101224']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template> -->
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'mesdeclapagant'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTISRR001']" /><!--1101218-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Estatus'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTISRR003']" /><!--1101219-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'numerooperacionpre'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTISRR004']" /><!--1101220-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'fechapresentacionpre'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTISRR005']" /><!--1101221-->
						<xsl:with-param name="Tipo" select="'date2'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'isretenidomesant'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETIRMA002']" /><!--1101222-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'isrretmes'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETIRM003']" /><!--1101223-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'total'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101225']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'totisrretenido'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101226']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				<!-- </xsl:for-each>
			</xsl:for-each>
		</xsl:if> -->
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalisrretenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DTISRR012']" /><!--1101038-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalimpretenidoant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101039']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldetisrretenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETT001']" /><!--1101043-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'pagoprovefecconant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DPPEA010']" /><!--1101023-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'isrretenidopm'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101045']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalisrretconsefecacre'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101046']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestoafavor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101047']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetPagosProvisionalesAnt": {
		"DetPagosProvisionalesAnterioridad": [
		<xsl:for-each select="//entidad[@clave='SAT_1022012']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'regimenfiscal'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022012']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ejerciciopagdis'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022013']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'periodicidadpagdis'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022014']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'periodopagdis'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022015']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerooperacionpagdis'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022016']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'montopagadopasdis'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022017']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022001bis']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'descripcionMes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022006']" />
					<xsl:with-param name="Tipo" select="'string'" />
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
					<xsl:with-param name="Nombre" select="'multacorrecion'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C10']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalcontribuciones'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C11']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'subsidioempleo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C12A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'compensaciones'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C13']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'acreditamientosorteos'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C19']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estimulosalimpuestocargo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C18']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'totalaplicaciones'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C21']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'fechapagoanterioridad'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C5']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'montopagadoanterioridad'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'realizoenultimas48horaspago'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'cantidadcargo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C22']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'cantidadfavor'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C25']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'cantidadpagar'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C26']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'impuestocargo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022002bis']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022003bis']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotPagAcumuladEfectuaDeclaracioPresentEjerciAnt'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'C27']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022010']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1022011']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalimpuestoacargotodasdeclasant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101035']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'pagosprovefectconantsolopagadas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101036']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetEstimulosISRCausado": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'mes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPEA001']" /><!--3800006-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestoacargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPEA002']" /><!--3800007-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Acargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00A']" /><!--3800008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Parteactualizada'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00B']" /><!--3800009-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Recargos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00C']" /><!--3800010-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Multacorreccion'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00D']" /><!--3800011-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Subsidioempleo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00F']" /><!--3800012-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Compensaciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00G']" /><!--3800013-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Acreditamientosorteos'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00H']" /><!--3800014-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Estimulosimpuestoacargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00I']" /><!--3800015-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Fechapagorealizadoanterioridad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00K']" /><!--3800016-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Montopagadoanterioridad'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00L']" /><!--3800017-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Ustedrealizoultimas48horaspagconcepto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00M']" /><!--3800018-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Cantidadcargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00N']" /><!--3800019-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Cantidadafavor'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00P']" /><!--3800020-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Cantidadapagar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00Q']" /><!--3800021-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Estatus'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPEA003']" /><!--3800022-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numerooperacionvigentes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPEA004']" /><!--3800023-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'fechapresentacionvigentes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPEA005']" /><!--3800024-->
			<xsl:with-param name="Tipo" select="'date2'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Pagoprovefectuadosant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPEAPP001']" /><!--3800025-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Messim'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPM001']" /><!--3800026-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'numerooperacionprellenado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPNO002']" /><!--3800027-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Montopagado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPMP003']" /><!--3800028-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"detestimulosisrcausado": [
		<xsl:for-each select="//entidad[@clave='SAT_DDETEICTE002']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'montolimiteestimulos'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETEICML001']" /><!--1019001bis-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'tipoestimulo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DDETEICTE002']" /><!--1019002bis-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'saldopendienteejerciciosant1'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DDETEICSPEA003']" /><!--1019004bis-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estimuloautorizadoenperiodo1'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DDETEICEAPD004']" /><!--1019005bis-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estimulodisponibleperiodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DDETEICEDAP005']" /><!--1019006bis-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'poraplicarenperiodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DDETEICPAP006']" /><!--1019007bis-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montlimiestimaaplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101030']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldelsaldopendiaplicarejercianterior'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTSPAEA001']" /><!--1101031-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldelestimuloautorizadoenelperiodoquesedeclara'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTEAPD002']" /><!--1101032-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldelestimulodisponibleporaplicarenelperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTEDAP003']" /><!--1101033-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalporaplicarenelperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETTAP004']" /><!--1101034-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totalmontopagadoarr'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'TMP001']" /><!--1101048-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totisrretconefeacre'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101055']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totsalpenapliejeant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101056']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totestautperdec'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101057']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totestdisapliper'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101058']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetParticipacionesTrabajadores": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montolimiteptu'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1017107']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ptupagadomesant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1017108']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ptupagadomes'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1017109']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>		
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ptuacumuladaaaplicarenelperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1017111']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"ptuacumuladaenperiodos":[
		<xsl:for-each select="//entidad[@clave='SAT_1017001']"> <!--Nota: Estas claves no estan en este formulario-->
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1017001bis']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ptupagada'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1017002bis']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1017003bis']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'total'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1017004bis']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1017105']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1017106']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		},
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totingdelper'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101012']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totdeduautorizadas'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101013']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'participaciontrabajadoresutilidades'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101014']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'perdidafiscalesejercanteraplicanenelperio'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101016']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalptudisminuir'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1017110']" /><!--1101017-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Impuestocausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101018']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tieneestimuloaplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101019']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estimuloimpcausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101020']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estimuloisrcausadorf'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101021']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Impuestoperiodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DIP009']" /><!--1101022-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Pagoprovefectuadorgsc'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DPPERSC011']" /><!--1101024-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'montocausadotasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101025']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestocausadotasa16'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101026']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estimuloacreditable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101027']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'pagoprovperiodoant'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101028']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impacargoestimacreditablemenosprov'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101029']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetEstimuloISRRegionFronteriza": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestocausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1020001']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tercerparteimpuestocausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1020002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'proporcioningresosregionfronteriza'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1020003']" />
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estimuloisrcausadoregionfronteriza'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1020004']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},		
		"DetPerdidasFiscalesEjerciciosAnterioresPendientesAplicar": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoLimPerdidaAplica'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0704001']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PerdidaEjerAnteAplica'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0704002']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PerdidaActualAplicaPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0704003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},		
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalcontribuciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00E']" /><!--1101040-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalaplicaciones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPIA00J']" /><!--1101041-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalestimulosalimpuestocausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDETPPEAT006']" /><!--1101042-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestoacargomenosimpretenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DIA013']" /><!--1101044-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetPagosProvRC":[
		<xsl:for-each select="//entidad[@clave='SAT_4200002']">  <!--Nota: Estas claves no estan en este formulario-->
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4200001']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'numerooperacionsim'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4200002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Montopagado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '4200003']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Totalmontopagadoactemp'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101049']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		"DetDeduccionInmediataInversionesPF":[
		<xsl:for-each select="//entidad[@clave='SAT_2000011']"><!--Nota: Estas claves no estan en este formulario-->
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000011']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Inversiones'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000012']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000013']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Total'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000014']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DedInmInvMesAntDeclaPagadas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000015']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DeduInmInveMes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000016']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DedInmInverPeriodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000017']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000018']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2000019']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ClaveEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="entidad[@clave='SAT_2000011']/@clave" />	<!--TODO:Clave pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DesEntidadorigen'" />
					<xsl:with-param name="ValorAtributo" select="//entidad[@clave='SAT_2000011']/@titulolargo" />	<!--TODO:Clave pendiente-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalivaacreditable'" />
			<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '65']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Totingdelper2'" />
			<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1100510']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldeduccionesaut'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DTDA002']" /><!--1100527-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tienesdeduccionessuperaintgre'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DDSPA003']" /><!--1100528-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totaldeduccionesuperi'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DTDSI004']" /><!--1100529-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'basegravable2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DBG005']" /><!--1100530-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'impuestocausado2'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DIC006']" /><!--1100531-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'tienesestimulosporaplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DTEA007']" /><!--1100532-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estimulosimpuestocausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DEIC008']" /><!--1100533-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalimpuestoretenido'" />
			<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '1101037']" /><!--1100533-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"DetPagosProvisionalesEfectuadosPeriodosAnteriores":{
		"DetPagosProvEfecPerAntISRPF":[
		<xsl:for-each select="//entidad[@clave='0707001']">	<!--Nota estas claves no vienenen en el fomulario-->
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'IdPeriodoPagoProv'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0707001']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DescPeriodoPagoProv'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0707002']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ImpuestoACargo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0707003']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ACargo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C7']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'ParteActualizada'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C8']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Recargos'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C9']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'MultaCorreccionFiscal'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C10']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalContribuciones'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C11']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'SubsidioParaEmpleo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C12A']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Compensaciones'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C13']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'AcreditamientoSorteos'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C19']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Estimulos'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C18']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalAplicaciones'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C21']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPagoRealizadoAnterioridad'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C5']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'MontoPagadoAnterioridad'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'RealizoUlt48PagoConcepto'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C20B']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'CantidadACargo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C22']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'CantidadAFavor'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C25']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'CantidadAPagar'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'C26']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'EstatusPagoProv'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0707004']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0707030']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0707031']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		],
		}
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'totalingpercpolaact'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101050']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'aplicaestzonlibrechet'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101051']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'supercredfisestzonchet'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101052']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'porcentajecreditofis'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101053']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'estifisactpro'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101054']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'AplicaselestimulofiscaldePOINBI'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101060']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'SupempleosdetefestaproyenuevPOINBI'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101061']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PorccrefiscalporelestPOINBI'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101062']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EstactividadesprodPOINBI'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101063']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpAcreDiviOUtiliDistris'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '1101064']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'detestimuloacreditable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0501003']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'concepto'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0501004']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'importeacreditable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0501005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		} <!--Cierre DeterminacionRCPF-->
		} <!--Cierre llave concepto-->
		} <!--Cierre llave inicial-->
	</xsl:template>

	<xsl:template name="GeneraAtributo">
		<xsl:param name="Nombre" />
		<xsl:param name="ValorAtributo" />
		<xsl:param name="Tipo" />
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='int'" >
			"<xsl:value-of select="$Nombre" />":<xsl:value-of select="number($ValorAtributo)" />,
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='string'" >
			"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="translate($ValorAtributo,translate($ValorAtributo,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890áéíóúÁÉÍÓÚ',''),'')" />",
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='stringPunto'" >
			"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="translate($ValorAtributo,translate($ValorAtributo,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890áéíóúÁÉÍÓÚ.',''),'')" />",
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='stringPorcentaje'" >
			"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="translate($ValorAtributo,translate($ValorAtributo,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890áéíóúÁÉÍÓÚ%',''),'')" />",
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='string2'" >
			"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="translate($ValorAtributo,translate($ValorAtributo,'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ 1234567890áéíóúÁÉÍÓÚ&amp;',''),'')" disable-output-escaping="yes"/>",
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
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='dateEsquema'" >
			<xsl:choose>
				<xsl:when test="string-length($ValorAtributo) >= 8" >
					"<xsl:value-of select="$Nombre" />": "<xsl:value-of select="substring($ValorAtributo,0, 5)" />-<xsl:value-of select="substring($ValorAtributo,6, 2)" />-<xsl:value-of select="substring($ValorAtributo,9, 2)" />" ,
				</xsl:when>
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
