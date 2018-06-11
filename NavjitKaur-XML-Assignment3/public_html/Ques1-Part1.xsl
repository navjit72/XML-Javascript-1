<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Ques1Part1</title>
            </head>
            <body>
                <h1>Authors</h1>
                <ul>
                    <xsl:for-each select="itemlist/item/authors">
                        <li><xsl:value-of select="author" /></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
