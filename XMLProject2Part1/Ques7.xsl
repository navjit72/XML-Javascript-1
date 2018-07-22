<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <head>
                <title>Countries</title>

            </head>
            <body>
                <h1>Countries</h1>
                <hr/>
                <!-- <input type="text" id="textId"/> -->
                
                <table border='1'>
                    <tr>
                        <th>COUNTRY NAME</th>
                        <th>POPULATION IN YEAR 2011</th>
                        <th>INFLATION</th>
                        <th>NO. OF CITIES</th>
                        <th>NO. OF PROVINCES</th>
                    </tr>
                    <xsl:for-each select="//country">
                        <!-- <xsl:if test="name = '$textId'"> -->
                            <tr>
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <!-- <td>
                                    <xsl:for-each select="population">
                                        <xsl:if test="@year = '2011'">
                                            <xsl:value-of select="."/>
                                        </xsl:if>
                                    </xsl:for-each>
                                </td> -->
                                <xsl:if test="count(population[@year='2011'])!=0">
                                    <td>
                                        <xsl:value-of select="population[@year='2011']"/>
                                    </td>
                                    </xsl:if>
                                    
                                    <xsl:if test="count(population[@year='2011'])=0">
                                    <td>
                                        <xsl:value-of select="../N/A"/>
                                    </td>
                                </xsl:if>
                                <td>
                                    <xsl:value-of select="inflation"/>
                                </td>

                                <td>
                                    <xsl:value-of select="count(.//city)"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(.//province)"/>
                                </td>
                            </tr>
                        <!-- </xsl:if> -->
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
