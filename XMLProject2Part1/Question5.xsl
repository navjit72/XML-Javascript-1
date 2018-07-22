<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head> 
<title> Question 5 </title> 
</head>
<body>
<h1> Countries </h1>
<hr />
<table border='1'>
<tr>
<td><b>COUNTRY NAME</b></td>
<td><b>POPULATION GROWTH</b></td>
<td><b>TOTAL GDP</b></td>
<td><b>AREA</b></td>
</tr>
<xsl:for-each select="//country">
<tr> <td> <xsl:value-of select="name" />  </td>
<td> <xsl:value-of select="population_growth" /> </td>
<td> <xsl:value-of select="gdp_total" /> </td>
<td> <xsl:value-of select="@area" />  </td> </tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>