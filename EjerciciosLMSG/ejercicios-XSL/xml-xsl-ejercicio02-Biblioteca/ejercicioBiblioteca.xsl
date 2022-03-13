<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/biblioteca">
    <html>
      <head>
        <title>Almuerzo</title>
      </head>
      <style type="text/css">
        body {
          margin: 50px;
          padding: 0px;
          background: #fffff;
          font-family: 'Open Sans', sans-serif;
          font-size: 11pt;
          color: #00000;
          text-align:center;
        }
        h1 {
          font
        }
      </style>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <h1>Nuestra Biblioteca</h1>
    <ul>
      <li><xsl:value-of select="primerPlato"/></li>

    </ul>
    <br/>
  </xsl:template>

</xsl:stylesheet>
