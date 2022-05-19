<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/periodico">
    <html>
      <head>
        <title><xsl:value-of select="@nombre"/></title>
      </head>
      <style>
        body {
        width:1000px;
        margin: 0 auto;
        font-family: Arial;
        font-size: 12px;
        padding:0px;
        }
        ol, ul
        {
        margin-top: 10px;
        margin-left: 0px;
        }
        
        #menu li
        {
        margin-left: 0px;
        display: inline;
        list-style-type: none;
        padding: 10px 50px;
        }
        
        .noticia {
        /* border: #000 solid 1px; */
        padding: 10px 5px;
        float: left; 
        width: 338px;
        }
        
        .noticia img {
        width: 338px;
        }
        
        .noticiaDobleAncho {
        /* border: #000 solid 1px; */
        padding: 10px 5px;
        float: left; 
        width: 690px;
        }
        
        .noticiaDobleAncho img {
        width: 690px;
        }
        
        .fechaNoticia {
        color: #A3A34B;
        }
        
        .comentariosNoticia {
        color: #A3A34B;
        padding-left: 20px;
        }
        
        .divPublicidad {
        /* border: #000 solid 1px; */
        padding: 10px 5px;
        float: right; 
        width: 280px;                    
        }
        
        .divPublicidad img {
        width: 200px;
        }
      </style>
      <body>
        <img src="{@logo}" width="997" height="115"></img>
        <div id="menu" style="width: 1000px; margin: 0px; padding: 0px;">
          <ul>
            <li style="background: #DDE640;"><a href="@href"><xsl:value-of select="."/></a></li>
            <li style="background: #F27E2B;"><a href="@href"><xsl:value-of select="."/></a></li>
            <li style="background: #DDE640;"><a href="@href"><xsl:value-of select="."/></a></li>
            <li style="background: #F27E2B;"><a href="@href"><xsl:value-of select="."/></a></li>
            <li style="background: #DDE640;"><a href="@href"><xsl:value-of select="."/></a></li>
            <li style="background: #F27E2B;"><a href="@href"><xsl:value-of select="."/></a></li>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
