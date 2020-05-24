<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
        <meta charset="utf-8"/>
        <title>JOJO´S</title>
        <meta name="description" content="Segundo XML"/>
        <link rel="stylesheet" href="estilo.css"/>
    </head>
  <body>
    <div class="bodyj">
      <div class="main">
        <div class="barra">
            <div><a href="index.html"><b>Inicio</b></a></div>
            <div><a href="xml1.xml"><b>XML 1</b></a></div>
            <div><a href="xml3.xml"><b>XML3</b></a></div>
            <div><a href="formulario.xml"><b>Formulario</b></a></div>
        </div>
        <h2>Temporadas de Jojo´s Bizarre Adventure</h2>
            <table class="Jojo">
                <tr bgcolor="darkblue">
                    <th>Nº de Temporada</th>
                    <th>Nombre de la Temporada</th>
                    <th>Habilidades</th>
                    <th>Protagonista</th>
                    <th>Stand del Prota</th>
                    <th>Secundario Principal</th>
                    <th>Stand del Secundario</th>
                    <th>Villano</th>
                    <th>Stand del Villano</th>
                    <th>Ubicación</th>
                    <th>Ubicación Temporal</th>
                    <th>Año de Publicación</th>
                    <th>Autor</th>
                </tr>
            <xsl:for-each select="jojos/temp">
                <tr bgcolor="darkorchid">
                    <td><xsl:value-of select="NoTemp"/></td>
                    <td><xsl:value-of select="NombreTemp"/></td>
                    <td><xsl:value-of select="Habilidades"/></td>
                    <td><xsl:value-of select="Protagonista"/></td>
                    <td><xsl:value-of select="StandProta"/></td>
                    <td><xsl:value-of select="SecundarioPrincipal"/></td>
                    <td><xsl:value-of select="StandSecun"/></td>
                    <td><xsl:value-of select="Villano"/></td>
                    <td><xsl:value-of select="StandVillano"/></td>
                    <td><xsl:value-of select="Ubicacion"/></td>
                    <td><xsl:value-of select="UbicacionTemp"/></td>
                    <td><xsl:value-of select="AñoPublicación"/></td>
                    <td><xsl:value-of select="Autor"/></td>
                </tr>
            </xsl:for-each>
          </table>
          <div class="imagenesjojo">
            <div><img src="media/imagenes/Jotarokujo.png" alt="jotaro" width="250em"/></div>
            <div class="stand">
                <img id="myImage" src="media/imagenes/menacing.png" style="width:200px"/><br/>
                <button onclick="document.getElementById('myImage').src='media/imagenes/Star_PLatinum_so_cool.png'">STAR PLATINUM</button>
                <button onclick="document.getElementById('myImage').src='media/imagenes/crazy%20diamond.jpg'">CRAZY DIAMOND</button>
                <button onclick="document.getElementById('myImage').src='media/imagenes/golden%20experience.png'">GOLDEN EXPERIENCE</button>
                <button onclick="document.getElementById('myImage').src='media/imagenes/StonefreeP.png'">STONE FREE</button>
                <button onclick="document.getElementById('myImage').src='media/imagenes/tusk.jpg'">TUSK</button>
                <button onclick="document.getElementById('myImage').src='media/imagenes/soft%20and%20wet.png'">SOFT AND WET</button>
            </div>
            <div><img src="media/imagenes/Johnny.png" alt="johnny"  width="250em"/></div>
        </div>
      </div>
    </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>