<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="lucasLoaves.css"/>
            </head>

            <body>
                <h2>Luca's Loaves</h2>
                <table>
                    <tr>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Description</th>
                        <th>Product Image</th>
                        <th>Product Sound</th>
                    </tr>
                <xsl:for-each select="lucasLoaves/product">
                    <tr>
                        <td><xsl:value-of select="productName"/></td>
                        <td><xsl:value-of select="price"/></td>
                        <td><xsl:value-of select="description"/></td>
                        <td><xsl:value-of select="productImg"/></td>
                        <td><xsl:value-of select="productSound"/></td>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>