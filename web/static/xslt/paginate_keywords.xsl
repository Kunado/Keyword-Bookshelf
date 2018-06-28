<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="page" />
<xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
	<xsl:apply-templates select="keywords/keyword">
		<xsl:sort select="count" data-type="number" order="descending" />
	</xsl:apply-templates>
</xsl:template>

<xsl:template match="keyword">
	<xsl:if test="position() &gt; ($page -1)*20 and position() &lt; ($page*20)+1">
		<li><xsl:value-of select="name" /><xsl:value-of select="count" /></li>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>
