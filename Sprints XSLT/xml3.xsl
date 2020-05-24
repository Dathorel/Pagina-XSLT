<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
        <meta charset="utf-8"/>
        <title>STAR WARS</title>
        <meta name="description" content="Tercer XML"/>
        <link rel="stylesheet" href="estilo.css"/>
    </head>
  <body>
    <div class="bodystar">
      <div class="main">
        <div class="barra">
            <div><a href="index.html"><b>Inicio</b></a></div>
            <div><a href="xml1.xml"><b>XML 1</b></a></div>
            <div><a href="xml2.xml"><b>XML2</b></a></div>
            <div><a href="formulario.xml"><b>Formulario</b></a></div>
        </div>
        <h2>Cronología principal Star Wars</h2>
            <table class="star">
                <tr bgcolor="lawngreen">
                    <th>Clasificación</th>
                    <th>Nombre</th>
                    <th>Nombre Original</th>
                    <th>Fecha de Publicación</th>
                    <th>Director</th>
                    <th>Ubicación Temporal</th>
                </tr>
            <xsl:for-each select="starwars/cr">
                <tr bgcolor="skyblue">
                    <td><xsl:value-of select="Clasificacion"/></td>
                    <td><xsl:value-of select="Nombre"/></td>
                    <td><xsl:value-of select="NombreOrig"/></td>
                    <td><xsl:value-of select="FechaPubli"/></td>
                    <td><xsl:value-of select="Director"/></td>
                    <td><xsl:value-of select="UbiTemp"/></td>
                </tr>
            </xsl:for-each>
          </table>
          <p class="explBY">*ABY y DBY quieren decir antes y despues de la batalla de Yavin (momento final del Episodio IV cuando se destruye la Estrella de la Muerte)</p>
        <h2>Peliculas que son de Star Wars pero no lo merecen</h2>
            <table class="kk">
                <tr bgcolor="lawngreen">
                    <th>Clasificación</th>
                    <th>Nombre</th>
                    <th>Nombre Original</th>
                    <th>Fecha de Publicación</th>
                    <th>Director</th>
                    <th>Ubicación Temporal</th>
                </tr>
            <xsl:for-each select="starwars/no">
                <tr bgcolor="burlywood">
                    <td><xsl:value-of select="Clasificacion"/></td>
                    <td><xsl:value-of select="Nombre"/></td>
                    <td><xsl:value-of select="NombreOrig"/></td>
                    <td><xsl:value-of select="FechaPubli"/></td>
                    <td><xsl:value-of select="Director"/></td>
                    <td><xsl:value-of select="UbiTemp"/></td>
                </tr>
            </xsl:for-each>
          </table>
          
          <div class="gifstar">
                <img src="media/imagenes/r2d2.gif" alt="R2D2"/>
                <img src="media/imagenes/babyyoda.webp" alt="baby yoda"/>
                <img src="media/imagenes/luke.jpg" alt="luke"/>
          </div>
      </div>
      </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>