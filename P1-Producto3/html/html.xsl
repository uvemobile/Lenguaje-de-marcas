<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<body>
		<table class="default" style="width:100%">
			<tr><th></th><th style="width:90%"><h2><xsl:value-of select="contenido/@titulo"></xsl:value-of></h2></th></tr>
			<tr><td></td><td><br/></td></tr>			
			<xsl:for-each select="contenido/tema">
				<tr><td></td><td><h3><xsl:value-of select="@titulo"/></h3></td></tr>
				<br/>
				<xsl:if test="intro1">
					<tr><td></td><td><p><xsl:value-of select="intro1"/></p><br/></td></tr>					
				</xsl:if>
				<xsl:for-each select="subtema">
					<tr><td></td><td><h4><xsl:value-of select="@titulo"/></h4></td></tr>
					<br/>
					<xsl:if test="intro2">
						<tr><td></td><td><p><xsl:value-of select="intro2"/></p><br/></td></tr>						
					</xsl:if>	
					<xsl:for-each select="parrafo">
						<tr><td></td><td><p><xsl:value-of select="."/></p><br/></td></tr>						
					</xsl:for-each>			
				</xsl:for-each>		
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
