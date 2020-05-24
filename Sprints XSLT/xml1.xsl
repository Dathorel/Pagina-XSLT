<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
        <meta charset="utf-8"/>
        <title>CDs</title>
        <meta name="description" content="Primer XML"/>
        <link rel="stylesheet" href="estilo.css"/>
    </head>
  <body>
    <div class="bodycd">
      <div class="main">
        <div class="barra">
            <div><a href="index.html"><b>Inicio</b></a></div>
            <div><a href="xml2.xml"><b>XML 2</b></a></div>
            <div><a href="xml3.xml"><b>XML3</b></a></div>
            <div><a href="formulario.xml"><b>Formulario</b></a></div>
        </div>
        <h2>Mi colección de CDs</h2>
            <table class="CD">
                <tr bgcolor="green">
                    <th>Titulo</th>
                    <th>Artista</th>
                    <th>País</th>
                    <th>Compañía</th>
                    <th>Precio</th>
                    <th>Año</th>
                </tr>
            <xsl:for-each select="catalog/cd">
                <tr bgcolor="saddlebrown">
                    <td><xsl:value-of select="title"/></td>
                    <td><xsl:value-of select="artist"/></td>
                    <td><xsl:value-of select="country"/></td>
                    <td><xsl:value-of select="company"/></td>
                    <td><xsl:value-of select="price"/></td>
                    <td><xsl:value-of select="year"/></td>
                </tr>
            </xsl:for-each>
          </table>
          <p class="explxml">*Este el es único XML que he cogido de internet, los otros dos son mios</p>
      </div>
      </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>