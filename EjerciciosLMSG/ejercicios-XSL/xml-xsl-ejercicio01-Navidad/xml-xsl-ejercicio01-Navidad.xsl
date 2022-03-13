<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/navidad">
    <html>
      <head>
        <title>Almuerzo</title>
      </head>
      <style type="text/css">
        body {
          margin: 50px;
          padding: 0px;
          background: #2372DE;
          font-family: 'Open Sans', sans-serif;
          font-size: 11pt;
          color: #FFFFFF;
          text-align:center;
        }
        
        .tituloTabla {
          display: flex;
          flex-direction: column;
          font-weight: bold;   
          text-align: center;
        }
      </style>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="almuerzo">
    <table border="1">
      <tr class="tituloTabla">
        <td><xsl:value-of select="primerPlato"/></td>
        <td><xsl:value-of select="segundoPlato"/></td>
        <td><xsl:value-of select="postre"/></td>
        <td><xsl:value-of select="bebida"/></td>
        <td><xsl:value-of select="sobremesa/primeraCopa"/></td>
        <td><xsl:value-of select="sobremesa/segundaCopa"/></td>
        <td><xsl:value-of select="sobremesa/terceraCopa"/></td>
      </tr>
    </table>
    <br/>
  </xsl:template>

</xsl:stylesheet>
