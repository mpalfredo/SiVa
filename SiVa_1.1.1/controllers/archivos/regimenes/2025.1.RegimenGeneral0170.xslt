<xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:output method='json' omit-xml-declaration="yes" />

	<xsl:template match="/">
		{
		"idconceptopago":"0170",
		"descconceptopago": "ISR simplificado de confianza. PODEBI",
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
		},
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
					"cveconceptoaplicocompensa" :"0167",
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
		"IngresosRGPM": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNominalFacturaPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG01']" /><!--0601001-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TieneIngNominalAdic'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG02']" /><!--0601002-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngAdicional'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG03']" /><!--0601003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TieneIngNominalDismin'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG04']" /><!--0601004-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngDismunir'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG05']" /><!--0601005-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNominalPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG06']" /><!--0601006-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNominalPeriodoAnterior'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG07']" /><!--0601007-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIngresoNominal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG08']" /><!--0601008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"IngresosNominalesPeriodosAnteriores": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIngresoNominalPeriodoAnte'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0604005']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngresoNomPeriodoAntePrepag'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0604006']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerAntExcDenRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0604010']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerAntSujEstRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0604011']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>

		<xsl:if test=" count(//entidad[@clave='SAT_1704000']/fila) &gt; 0" >
			"DetIngresosNominalesPeriodosAnteriores":[
			<xsl:for-each select="//entidad[@clave='SAT_1704000']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IdPeriodoAnte'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INPA001']" /><!--0604001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'DescPeriodoAnte'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INPA001']/@etiqueta" /><!--0604001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IngNominalAnte'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INPA007']" /><!--0604003-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EstatusAnterior'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INPA003']" /><!--0604004-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IngNomExcDentRFN'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0604007']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IngNomExcDentRFS'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0604008']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IngNomNoSujEstimulo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0604009']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INPA004']" /><!--0604016-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INPA005']" /><!--0604017-->
						<xsl:with-param name="Tipo" select="'date2'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Total'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0604010']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IngNominalAtri'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INPA002']" /><!--0604011-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		},
		"DetIngresosNominales": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerNoSujEstRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605009']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605001'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontDetallar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INOM001'  and @visible='true']" /><!--0605002-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontDetallado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INOM002'  and @visible='true']" /><!--0605003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenReg'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605004'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenRegFS'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605005'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenRegFron'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605006'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'SujeEstiRegion'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605007'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		<xsl:if test=" count(//entidad[@clave='SAT_1702000']/fila) &gt; 0" >
			"DetIngresosNominalesAdicionales": [
			<xsl:for-each select="//entidad[@clave='SAT_1702000']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IdConceptoIngNomDis'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IND001']" /><!--0603001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'DescConceptoIngNomDis'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IND001']/@etiqueta" /><!--0603001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ImpoConceptoIngNomDis'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IND002']" /><!--0603003-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IngresosADisminuir'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'IND003']" /><!--0603004-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		"DetTotalIngresosNominalesPeriodo": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerAntExcDenRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INPA006']" /><!--0604010-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerExcDenRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0605008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomExcDenRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606003'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomPerAntNoSujEstRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606004'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomDelPerNoSujEstRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606005'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomNoSujEstRFN'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606006'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIngresosNom'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606007'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'IngNomExcDenRF1'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606008'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalIngresosNom1'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606009'  and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PorporcionIngDenRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0606010']" />
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		},
		<xsl:if test=" count(//entidad[@clave='SAT_1703000']/fila) &gt; 0" >
			"DetIngresosNominalesADisminuir": [
			<xsl:for-each select="//entidad[@clave='SAT_1703000']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IdConceptoIngNomAdic'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INA001']" /><!--0602001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'DescConceptoIngNomAdic'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INA001']/@etiqueta" /><!--0602001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ImpoConceptoIngNomAdic'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'INA002']" /><!--0602003-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IngresosAdicionales'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'INA003']" /><!--0602004-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		}, <!--Cierre ingresosRGPM-->
		"DeterminacionRGPM" : {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotIngNominal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG09']" /><!--0701001-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtil'" />
			<xsl:with-param name="ValorAtributo" select='format-number(//entidad/propiedad[@claveinformativa = "PPPMRG10"], "#0.0000")' /><!--0701002-->
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TienesAutorizacionDisminuirPagoProv'" />
			<xsl:with-param name="ValorAtributo" select='//entidad/propiedad[@claveinformativa = "PPPMRG11"]'/><!--0701003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtilidadAutorizado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG12']" /><!--0701004-->
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'UtilFiscalPagoProv'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG13']" /><!--0701005-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ParticipaTrabajadorUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG15']" /><!--0701006-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'AnticipoRendDisPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0701007']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TienePerdidaFiscalEjerante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG16']" /><!--0701008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PerdidaFiscalEjerante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG17']" /><!--0701009-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'BaseGravaPagoProv'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG18']" /><!--0701010-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoCausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG19']" /><!--0701011-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TieneEstimuloAplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG24']" /><!--0701012-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EstimuloISRCausado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG25']" /><!--0701013-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG26']" /><!--0701014-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'AnticiposISRaCargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG27']" /><!--0701015-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoDeterminado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG28']" /><!--0701016-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoAcredDivDist'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG29']" /><!--0701017-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PagoProveFecPerAnte_a'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG30']" /><!--0701018-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotImpuestoRetenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG31']" /><!--0701019-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoCargo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPPMRG32']" /><!--0701020-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'DeduInmedInversiones'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0701021']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtilFiscal'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0711001']" />
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'DeduInmediPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0701022']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		"EstISRCausado": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotSaldoPendienteDeAplicarEjeAnt'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0705008']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotEstumiloAutorizadoPerDeclara'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0705009']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalEstimuloDispPorAplicar'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0705010']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalAplicarEnElPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0705011']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EstISRCausadoRF'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710005' and @visible='true']" />
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_0705000']/fila) &gt; 0" >
			"DetEstimuloISRCausado": [
			<xsl:for-each select="//entidad[@clave='SAT_0705000']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'MontoLimiteEstimulosAplicar'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0705001']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IdTipoEstimulo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0705002']" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'DescTipoEstimulo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0705002']/@etiqueta" />
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'SaldoPendAplicaEjerAnte'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0705004']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EstimuloAutoPeriodoDecla'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0705005']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EstimuloDispoAplicaPeriodo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0705006']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'PorAplicarPeriodo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '0705007']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					"DetEstimuloISRCausadoRF": [
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ImpuestoCausado'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710002'  and @visible='true']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TerceraPartImpCaus'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710003' and @visible='true']"/>
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ProporcionIngDenRF'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710004']" />
						<xsl:with-param name="Tipo" select="'stringPunto'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EstISRCausadoRF'" />
						<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710005' and @visible='true']" />
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					},
					],
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		<xsl:if test=" count(//entidad[@clave='SAT_0705000']/fila) = 0" >
			"DetEstimuloISRCausado": [
			{
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'MontoLimiteEstimulosAplicar'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0705001']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			"DetEstimuloISRCausadoRF": [
			{
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'ImpuestoCausado'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710002'  and @visible='true']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'TerceraPartImpCaus'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710003' and @visible='true']"/>
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'ProporcionIngDenRF'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710004']" />
				<xsl:with-param name="Tipo" select="'stringPunto'" />
			</xsl:call-template>
			<xsl:call-template name="GeneraAtributo">
				<xsl:with-param name="Nombre" select="'EstISRCausadoRF'" />
				<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '0710005' and @visible='true']" />
				<xsl:with-param name="Tipo" select="'int'" />
			</xsl:call-template>
			},
			],
			},
			],
		</xsl:if>
		},
		"DetPagosProvisionalesEfectuadosPeriodosAnteriores" : {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalPagoProvEfecPeriodoAnte'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PEA022']" /><!--0707005-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PagoProvEfecPerAnte'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PEA023']" /><!--0707006-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_1713000']/fila) &gt; 0" >
			"DetPagosProvEfecPerAntISRPM": [
			<xsl:for-each select="//entidad[@clave='SAT_1713000']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IdPeriodoPagoProv'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA001']" /><!--0707001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'DescPeriodoPagoProv'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA001']/@etiqueta" /><!--0707001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ImpuestoACargo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA002']" /><!--0707003-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ACargo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA003']" /><!--C7-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ParteActualizada'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA004']" /><!--C8-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Recargos'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA005']" /><!--0707003C9-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'MultaCorreccionFiscal'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA006']" /><!--0707003C10-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalContribuciones'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA007']" /><!--0707003C11-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'SubsidioParaEmpleo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA008']" /><!--0707003C12A-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Compensaciones'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA009']" /><!--0707003C13-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'AcreditamientoSorteos'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA010']" /><!--0707003C19-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'Estimulos'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA011']" /><!--0707003C18-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'TotalAplicaciones'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA012']" /><!--0707003C21-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'FechaPagoRealizadoAnterioridad'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA013']" /><!--0707003C5-->
						<xsl:with-param name="Tipo" select="'dateEsquema'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'MontoPagadoAnterioridad'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA014']" /><!--0707003C20-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'RealizoUlt48PagoConcepto'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA015']" /><!--0707003C20B-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'CantidadACargo'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA016']" /><!--0707003C22-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'CantidadAFavor'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA017']" /><!--0707003C25-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'CantidadAPagar'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA018']" /><!--0707003C26-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EstatusPagoProv'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA019']" /><!--0707004-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA020']" /><!--0707030-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'PEA021']" /><!--0707031-->
						<xsl:with-param name="Tipo" select="'date2'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		},
		<xsl:variable name="sumAuxTotalRetPerAnt" >
			<xsl:if test=" count(//entidad[@clave='SAT_0708000']/fila) &gt; 0" >
				<xsl:for-each select="//entidad[@clave='SAT_0708000']">
					<xsl:value-of select="sum(fila/propiedad[@claveinformativa = 'IRPA002' and number(.)=number(.)])"/><!--0708003-->
				</xsl:for-each>
			</xsl:if>
		</xsl:variable>
		<xsl:variable name="sumTotalRetPerAnt" >
			<xsl:choose>
				<xsl:when test="string(number($sumAuxTotalRetPerAnt))='NaN'" >
					<xsl:value-of select="''" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$sumAuxTotalRetPerAnt" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>

		"DetISRRetenidoPeriodosAnteriores" : {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalSumaImpRetPeriodoAnte'" />
			<xsl:with-param name="ValorAtributo" select="$sumTotalRetPerAnt" />		<!--0709005-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpRetenidoPeriodosAnteriores'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'IRPA007']" /><!--0709006-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ImpuestoRetenidoDelPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'IRPA008']" /><!--0709007-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'TotalImpuestoRetenido'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'IRPA009']" /><!--0709008-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:if test=" count(//entidad[@clave='SAT_1717000']/fila) &gt; 0" >
			"DetISRPMRGImpRetPeAnt": [
			<xsl:for-each select="//entidad[@clave='SAT_1717000']">
				<xsl:for-each select="fila">
					{
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'IdPeriodoAnte'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IRPA001']" /><!--0708001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'DescPeriodoAnte'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IRPA001']/@etiqueta" />	<!--0708001-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'ImpuestoRetenPeriodoAnte'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IRPA002']" /><!--0708003-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'EstatusImpuPeriodoAnte'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IRPA003']" /><!--0708004-->
						<xsl:with-param name="Tipo" select="'string'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IRPA004']" /><!--0708005-->
						<xsl:with-param name="Tipo" select="'int'" />
					</xsl:call-template>
					<xsl:call-template name="GeneraAtributo">
						<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
						<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'IRPA005']" /><!--0708006-->
						<xsl:with-param name="Tipo" select="'date2'" />
					</xsl:call-template>
					},
				</xsl:for-each>
			</xsl:for-each>
			],
		</xsl:if>
		},
		"DetCoeficienteUtilidad": [
		{
		"Consecutivo":1,
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EjerCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU004A']" /> <!--0702002A-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtil'" />
			<xsl:with-param name="ValorAtributo" select='//entidad/propiedad[@claveinformativa = "CU001B"]' /><!--0702003B-->
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Origen'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU006A']" /><!--0702004A-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'FechaPresentaCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU007A']" /><!--0702005A-->
			<xsl:with-param name="Tipo" select="'dateEsquema'" />
		</xsl:call-template>
		},
		{
		"Consecutivo":2,
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EjerCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU004B']" /><!--0702002B-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtil'" />
			<xsl:with-param name="ValorAtributo" select='//entidad/propiedad[@claveinformativa = "CU001C"]' /><!--0702003C-->
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Origen'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU006B']" /><!--0702004B-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'FechaPresentaCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU007B']" /><!--0702005B-->
			<xsl:with-param name="Tipo" select="'dateEsquema'" />
		</xsl:call-template>
		},
		{
		"Consecutivo":3,
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EjerCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU004C']" /><!--0702002C-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtil'" />
			<xsl:with-param name="ValorAtributo" select='//entidad/propiedad[@claveinformativa = "CU001D"]' /> <!--0702003D-->
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Origen'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU006C']" /> <!--0702004C-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'FechaPresentaCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU007C']" /> <!--0702005C-->
			<xsl:with-param name="Tipo" select="'dateEsquema'" />
		</xsl:call-template>
		},
		{
		"Consecutivo":4,
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EjerCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU004D']" /><!--0702002D-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtil'" />
			<xsl:with-param name="ValorAtributo" select='//entidad/propiedad[@claveinformativa = "CU001E"]' /> <!--0702003E-->
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Origen'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU006D']" /><!--0702004D-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'FechaPresentaCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU007D']" /><!--0702005D-->
			<xsl:with-param name="Tipo" select="'dateEsquema'" />
		</xsl:call-template>
		},
		{
		"Consecutivo":5,
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'EjerCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU004E']" /><!--0702002E-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteUtil'" />
			<xsl:with-param name="ValorAtributo" select='//entidad/propiedad[@claveinformativa = "CU001F"]' /><!--0702003F-->
			<xsl:with-param name="Tipo" select="'stringPunto'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'Origen'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU006E']" /><!--0702004E-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'FechaPresentaCoefUtil'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU007E']" /><!--0702005E-->
			<xsl:with-param name="Tipo" select="'dateEsquema'" />
		</xsl:call-template>
		}
		],
		"DetPorcentajeAplicableParaDeterminarUtilidadFiscal": [{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ActPreponderante'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU002']" /><!--0711002-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoefAplicable'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'CU003']" /><!--0711003-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		}],
		"DetParticipacionTrabajadoresUtilidades": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PTUDetDeclaAnual'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PTU001']" /><!--0703001-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoLimPTUAplica'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PTU002']" /><!--0703002-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PTUPagadoMesMayo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PTU003']" /><!--0703003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'LimitePTUDistPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PTU004']" /><!--0703004-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PTUAcumAplicaPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PTU005']" /><!--0703005-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetPerdidasFiscalesEjerciciosAnterioresPendientesAplicar": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoLimPerdidaAplica'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPA001']" /><!--0704001-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PerdidaEjerAnteAplica'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPA002']" /><!--0704002-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'PerdidaActualAplicaPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'PPA003']" /><!--0704003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetImpuestoAcreditableDividendosUtilidadesDistribuidas": {
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'MontoLimiteImpuAcredita'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'IAD001']" /><!--0706001-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ISRDivPendienteAcredita'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'IAD002']" /><!--0706002-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'ISRDivAcreditaPeriodo'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'IAD003']" /><!--0706003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		},
		"DetDisminucionPagoProvisonal": [{
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'NumeroAutorizacion'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DPP001']" /><!--0709001-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'FechaAutorizacion'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DPP002']" /><!--0709002-->
			<xsl:with-param name="Tipo" select="'string'" />
		</xsl:call-template>
		<xsl:call-template name="GeneraAtributo">
			<xsl:with-param name="Nombre" select="'CoeficienteiUtilAutorizado'" />
			<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DPP003']" /><!--0709003-->
			<xsl:with-param name="Tipo" select="'int'" />
		</xsl:call-template>
		}],
		"DetDeduccionInmediataInversionesNearshoringRG": [
		<xsl:for-each select="//entidad[@clave='SAT_1709000']">
			<xsl:for-each select="fila">
				{				
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII001']" /><!--2000011-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Inversiones'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII002']" /><!--2000012-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII003']" /><!--2000013-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Total'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII006']" /><!--2000014-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DedInmInvMesAntDeclaPagadas'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII007']" /><!--2000015-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DeduInmInveMes'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = 'DII008']" /><!--2000016-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DedInmInverPeriodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII009']" /><!--2000017-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII004']" /><!--2000018-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = 'DII005']" /><!--2000019-->
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>		
		],
		"DetDeduccionInmediataInversionesPlanSonoraRG": [
		<xsl:for-each select="//entidad[@clave='SAT_DDIIPS001']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Mes'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2100011']" />	<!--propiedad[@claveinformativa = '2100011']-->
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Inversiones'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2100012']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2100013']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Total'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2100014']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DedInmInvMesAntDeclaPagadas'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2100015']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DeduInmInveMes'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2100016']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DedInmInverPeriodo'" />
					<xsl:with-param name="ValorAtributo" select="//entidad/propiedad[@claveinformativa = '2100017']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2100018']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2100019']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>		
		],
		"DetDeduccionInmediataPODEBI":[
		<xsl:for-each select="//entidad[@clave='SAT_AUXPS001']">
			<xsl:for-each select="fila">
				{
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Periodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300001']" /><!--propiedad[@claveinformativa = '2100011']-->
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DeduccionInmediataDePeriodosAnteriores'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300002']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Estatus'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300003']" />
					<xsl:with-param name="Tipo" select="'string'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'Total'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300006']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DeduccionInmediataPeriodosAnteriorDeclaraPeriodoPagado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300007']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'DeduccionInmediataPeriodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300008']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'TotalISRetenidoDelPeriodo'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300009']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'NumeroOperacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300004']" />
					<xsl:with-param name="Tipo" select="'int'" />
				</xsl:call-template>
				<xsl:call-template name="GeneraAtributo">
					<xsl:with-param name="Nombre" select="'FechaPresentacionPrellenado'" />
					<xsl:with-param name="ValorAtributo" select="propiedad[@claveinformativa = '2300005']" />
					<xsl:with-param name="Tipo" select="'date2'" />
				</xsl:call-template>
				},
			</xsl:for-each>
		</xsl:for-each>
		]
		} <!--Cierre determinacionRGPM-->
		} <!--Cierre Pago-->
		} <!--Cierre concepto-->
	</xsl:template>

	<xsl:template name="GeneraAtributo">
		<xsl:param name="Nombre" />
		<xsl:param name="ValorAtributo" />
		<xsl:param name="Tipo" />
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='int'" >
			"<xsl:value-of select="$Nombre" />":<xsl:value-of select="number($ValorAtributo)" />,
		</xsl:if>
		<xsl:if test=" $ValorAtributo!='' and $Nombre!='' and $Tipo='stringPunto'" >
			"<xsl:value-of select="$Nombre" />":"<xsl:value-of select="translate($ValorAtributo,translate($ValorAtributo,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890áéíóúÁÉÍÓÚ.',''),'')" />",
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
