<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Ques10.xsl</title>
            </head>
            <body>
                <table border = '1'>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                    </tr>
                    <xsl:for-each select="Library/play">
                        <tr>
                            <td>
                                <xsl:value-of select="title"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="author"></xsl:value-of>
                            </td>
                        </tr>                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
