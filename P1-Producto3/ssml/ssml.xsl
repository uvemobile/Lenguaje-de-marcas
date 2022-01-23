<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<speak version="1.0" xmlns="http://www.w3.org/2001/10/synthesis" xml:lang="es-ES">
			<voice name="es-ES-Laura-Apollo">
				<p><prosody rate="slow"><xsl:value-of select="producto3/titulo1"/></prosody></p>
			</voice>
			<voice name="es-ES-Pablo-Apollo">
				<p>
				<xsl:value-of select="producto3/titulo2"/><break strengh="x-strong"/>
				</p>	
			</voice>
			<voice name="es-ES-Pablo-Apollo">
				<p>
				<xsl:value-of select="producto3/texto"/><break strengh="x-strong"/>
				</p>	
			</voice>
		</speak>
	</xsl:template>
</xsl:stylesheet>
