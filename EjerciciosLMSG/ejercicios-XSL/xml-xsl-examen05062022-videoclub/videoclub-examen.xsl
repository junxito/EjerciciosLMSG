<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/videoclub">
    <html>
      <head>
        <title>videoclub-examen</title>
      </head>
      <body>
        <table border="1" width="100%">
          <tr style="background: blue;">
            <th>Titulo</th>
            <th>Pegi</th>
            <th>Duracion/Plataforma</th>
            <th>Alquiler diario</th>      
          </tr>
          <xsl:for-each select="Peliculas/pelicula">
            <xsl:sort select="@order" order="ascending"/>
            <tr>
              <xsl:attribute name="style">
                background:
                <xsl:choose>
                  <xsl:when test="position() mod 2 = 1">
                    #<xsl:value-of select="/videoclub/bancoDeImagenes/color[@identificador='peliculas']"/>;
                  </xsl:when>
                  <xsl:otherwise>
                    lightyellow;
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
              <td>
                <xsl:value-of select="@titulo"/>
              </td>
              <td>
                <xsl:value-of select="@pegi"/>
              </td>
              <td>
                <xsl:value-of select="@duracionEnMinutos"/>
              </td>
              <td>
                <xsl:value-of select="@alquilerDiario"/>
              </td>
            </tr>
          </xsl:for-each>
          <xsl:apply-templates select="videojuegos/videoJuego">
            <xsl:sort select="@order" order="ascending"/>
          </xsl:apply-templates>
      	</table>
        <br/>
        <table border="1" width="100%">
          <xsl:call-template name="bucleForFila">
            <xsl:with-param name="i">1</xsl:with-param>
          </xsl:call-template>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="/videoclub/videojuegos/videoJuego">
    <tr>
      <xsl:attribute name="style">
        background:
        <xsl:choose>
          <xsl:when test="position() mod 2 = 1">
            #<xsl:value-of select="/videoclub/bancoDeImagenes/color[@identificador='videojuegos']"/>;
          </xsl:when>
          <xsl:otherwise>
            #b4ff94; 
          </xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <td>
        <xsl:value-of select="."/>
      </td>
      <td>
        <xsl:value-of select="@pegi"/>
      </td>
      <td>
        <xsl:value-of select="@plataforma"/>
      </td>
      <td>
        <xsl:value-of select="@alquilerDiario"/>
      </td>
    </tr>
  </xsl:template>
  
  <xsl:template name="bucleForFila">
    <xsl:param name="i"/>
    <xsl:if test="$i &lt;= 5">
      <tr>
        <xsl:call-template name="bucleForColumna">
          <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
          <xsl:with-param name="j">1</xsl:with-param>
        </xsl:call-template>
      </tr>
      <xsl:call-template name="bucleForFila">
        <xsl:with-param name="i"><xsl:value-of select="$i + 1"/></xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  
  <xsl:template name="bucleForColumna">
    <xsl:param name="i"/>
    <xsl:param name="j"/> 
    <xsl:if test="$j &lt;= 5">
      <xsl:call-template name="celda">
        <xsl:with-param name="x"><xsl:value-of select="$j"/></xsl:with-param>
        <xsl:with-param name="y"><xsl:value-of select="$i"/></xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="bucleForColumna">
        <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
        <xsl:with-param name="j"><xsl:value-of select="$j + 1"/></xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  
  <xsl:template name="celda">
    <xsl:param select="/videoclub/Peliculas/pelicula/coordenadas" name="x1" />
    <xsl:param select="/videoclub/Peliculas/pelicula/coordenadas" name="y1" />
    <xsl:param name="x" />
    <xsl:param  name="y" />
    <td align="center">
      
      <xsl:for-each select="/videoclub/Peliculas/pelicula">
        <xsl:if test="@y=$x1 and @x=$y1">
          
          <xsl:attribute name="style">
            background:
            #<xsl:value-of select="/videoclub/bancoDeImagenes/color[@identificador = 'peliculas']"/>;
          </xsl:attribute>
          <xsl:call-template name="imagenes">
            <xsl:with-param name="idImagen">
              <xsl:value-of select="@idImagen"/>
            </xsl:with-param>
          </xsl:call-template>
          <xsl:value-of select="@titulo"/>
          <br></br>
          Pegi:
          <xsl:value-of select="@pegi"/>
          Alquiler:
          <br></br>
          <xsl:value-of select="@alquilerDiario"/>
        </xsl:if>
      </xsl:for-each>
      
      <xsl:for-each select="videojuegos/videoJuego">
        <xsl:if test="@y=$x and @x=$y">
          <xsl:attribute name="style">
            background:
            #<xsl:value-of select="/videoclub/bancoDeImagenes/color[@identificador = 'videojuegos']"/>;
          </xsl:attribute>
          <xsl:call-template name="imagenes">
            <xsl:with-param name="idImagen">
              <xsl:value-of select="@identificador"/>
            </xsl:with-param>
          </xsl:call-template>
          <xsl:value-of select="."/>
          <br></br>
          Pegi:
          <xsl:value-of select="@pegi"/>
          <br></br>
          Alquiler:
          <xsl:value-of select="@alquilerDiario"/>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>
  
  <xsl:template name="imagenes">
    <xsl:param name="idImagen"></xsl:param>
    <xsl:param name="idimg" select="/videoclub/videojuegos/videoJuego"/>
    <xsl:for-each select="/videoclub/bancoDeImagenes/imagen">
      <xsl:if test="@idimg = $idImagen">
        <img src="{.}" style="width=50px;"></img>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
 
</xsl:stylesheet>
