<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="//customer">
        <html>
            <head>
                <title>customer.xsl</title>
            </head>
            <body>
                <h1>Customer </h1>
                <ul>
                    <li><xsl:value-of select="name" /></li>
                    <li><xsl:value-of select="zip" /></li>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
