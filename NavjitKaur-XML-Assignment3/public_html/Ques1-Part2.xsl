<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Ques1Part2</title>
            </head>
            <body>
                <h1>Item Table</h1>
                <table border="1">
                    <tr style="background-color:green;">
                        <th>ISBN</th>
                        <th>TITLE</th>
                        <th>AUTHOR(S)</th>
                        <th>PUBLISHER</th>
                        <th>STATUS</th>
                    </tr>
                    <xsl:for-each select="itemlist/item">
                        <tr>
                            <td>
                                <xsl:value-of select="isbn" />
                            </td>
                            <td>
                                <xsl:value-of select="title" />
                            </td>
                            <td>
                                <xsl:value-of select="authors" />
                            </td>
                            <td>
                                <xsl:value-of select="publisher" />
                            </td>
                            <td>
                                <xsl:value-of select="status" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>             
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
