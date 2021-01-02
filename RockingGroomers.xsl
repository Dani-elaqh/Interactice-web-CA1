<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link rel="stylesheet" href="css/PaddysCafe.css" />
            <script type="text/javascript" src="js/PaddysCafe.js">x</script>
        <table id="menuTable" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="3">Rocking Services</th>
                </tr>
                <tr>
                    <th>Selection</th>
                    <th>Product</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/groomingservice/section">
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="@name" />
                        </td>
                    </tr>
                    <xsl:for-each select="service">
                        <tr id="{position()}">
                            <xsl:attribute name="delivery">
                                <xsl:value-of select="boolean(@delivery)" />
                            </xsl:attribute>
                            <td align="center">
                                <input name="item0" type="checkbox" />
                            </td>
                            <td>
                                <xsl:value-of select="item" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>