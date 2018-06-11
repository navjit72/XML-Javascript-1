<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Ques2Part1</title>
            </head>
            <body>
                <h1>Second Last Item</h1>
                <xsl:value-of select="//item[last()-1]"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
