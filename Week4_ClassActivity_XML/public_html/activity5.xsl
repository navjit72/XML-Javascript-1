<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>activity5.xsl</title>
            </head>
            <body>
                <h1>Customer</h1>
                <table border="1">
                    <tr style="background-color:green;">
                        <th>NAME</th>
                        <th>CITY</th>
                        <th>STATE</th>
                        <th>STREET</th>
                        <th>ZIP</th>
                    </tr>
                    <xsl:for-each select="customers/customer">
                        <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="city" />
                            </td>
                            <td>
                                <xsl:value-of select="state" />
                            </td>
                            <td>
                                <xsl:value-of select="street" />
                            </td>
                            <td>
                                <xsl:value-of select="zip" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h1>Item List</h1>
                <table border="1">
                    <tr style="background-color:yellow;">
                        <th>Description</th>
                        <th>Quantity</th>
                    </tr>
                    <xsl:for-each select="customers/customer/orders/order/item">
                        <tr>
                            <td>
                                <xsl:value-of select="description" />
                            </td>
                            <td>
                                <xsl:value-of select="qty" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
