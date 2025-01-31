<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link href="C:\Users\Catherine\Documents\Mactaggart\style.css" rel="stylesheet" type="text/css" />
                <title>Mactaggart</title>
            </head>
            <body style="display: flex;
  justify-content: space-around;
  font-family: 'Noto Serif';
  font-size: 13pt;
  line-height: 20pt;
  margin: 0;">
                <div id="#container">
                    <main style="flex: 2;
  margin-top: 3rem;
  margin-right: 2rem;
  margin-left: 3rem;
  padding-bottom: 2rem;
  max-width: 37rem;
  text-align: justify;
  position: relative;">
                        <xsl:apply-templates select="//text" />
                    </main>

                </div>
            </body>
        </html>
        
    </xsl:template>


    <xsl:template
        match="head">
        <h2>
            <xsl:apply-templates />
        </h2>
    </xsl:template>


    <xsl:template
        match="p">
        <p>
            <xsl:apply-templates />
        </p>
    </xsl:template>

    <xsl:template match="pb">
        <span id="{@n}" class="pb" style="position:absolute;
  right: 100%;
  padding-right: 2em;">
            <a href="{@facs}" target="_blank">
                <xsl:value-of select="@n" />
                <xsl:apply-templates />
            </a>
        </span>
    </xsl:template>

</xsl:stylesheet>
