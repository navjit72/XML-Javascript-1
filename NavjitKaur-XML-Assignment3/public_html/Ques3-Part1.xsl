<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Ques3Part1</title>
            </head>
            <body>
                <h1>Status Available</h1>
                <ul>
					<xsl:for-each select="itemlist/item[status='Available']">
					<li><xsl:value-of select="."></xsl:value-of></li>
					</xsl:for-each>
				</ul>             
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
