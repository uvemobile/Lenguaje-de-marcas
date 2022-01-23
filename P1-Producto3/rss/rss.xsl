<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
       <xsl:for-each select="rss/channel/item">
          <div style="color: #100000; padding:12px; text-align: center ; margin-top:60px; border:2px solid black; width: 260px;">
             <span style="font-weight:bold;">
               <xsl:value-of select="title"/><br/>
               </span>
               <a href="http://52.166.141.5/html/producto3.xml"><xsl:value-of select="link"/></a><br/>
               <xsl:value-of select="description"/>
          </div>
    </xsl:for-each>
   </body>
 </html>
</xsl:template>

<xsl:template match="htext">
    <a href="{@url}">
        <xsl:apply-templates />
    </a>
</xsl:template>
</xsl:stylesheet>