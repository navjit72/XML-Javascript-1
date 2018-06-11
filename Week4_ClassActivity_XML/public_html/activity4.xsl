<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>activity4.xsl</title>
            </head>
            <body>
                <h1>Customer</h1>
                <ul>
                    <xsl:for-each select="customers/customer">
                        <li><xsl:value-of select="name" /></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
