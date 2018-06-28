<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="isbn" />
	<xsl:param name="cgi_scripts" />
<xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/books">
	<xsl:apply-templates select="item[isbn=$isbn]/keywords/keyword">
	</xsl:apply-templates>
</xsl:template>

<xsl:template match="keyword">
	<li>
		<a>
			<xsl:attribute name="href">
				<xsl:variable name="keyword" select="."/>
				<xsl:value-of select="concat($cgi_scripts, '/keyword.rhtml?keyword=', $keyword)"/>
			</xsl:attribute>
			<xsl:value-of select="."/>
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>
