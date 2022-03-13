<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/disfraces">
    <html>
      <head>
        <title>Disfraces de Carnaval</title>
      </head>
      <body>
      	<xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
   <xsl:template match="leon">
      <h1>Leon hace: <xsl:value-of select="."/></h1>
  </xsl:template>

  <xsl:template match="peppaPig">
      <h1>Peppa Pig hace: <xsl:value-of select="."/></h1>
  </xsl:template> 
  <xsl:template match="caballitoMar">
      <h1>Caballito de Mar hace: <xsl:value-of select="."/></h1>
  </xsl:template>

</xsl:stylesheet>
