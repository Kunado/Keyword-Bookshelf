<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="keyword" />
	<xsl:param name="page" />
	<xsl:param name="cgi_scripts" />
<xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/books">
	<xsl:apply-templates select="item[keywords/keyword=$keyword]">
	</xsl:apply-templates>
</xsl:template>

<xsl:template match="item">
	<xsl:if test="position() &gt; ($page -1)*20 and position() &lt; ($page*20)+1">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:variable name="isbn" select="isbn"/>
					<xsl:value-of select="concat($cgi_scripts, '/book.rhtml?isbn=', $isbn)"/>
				</xsl:attribute>
				<h3><xsl:value-of select="title" /></h3>
				<xsl:value-of select="creator" />
			</a>
		</li>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>
