<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="keyword" />
	<xsl:param name="page" />
	<xsl:param name="cgi_scripts" />
<xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/relations">
	<xsl:apply-templates select="relation[keyword=$keyword]">
		<xsl:sort select="count" data-type="number" order="descending" />
	</xsl:apply-templates>
</xsl:template>

<xsl:template match="relation">
	<xsl:if test="position() &gt; ($page -1)*20 and position() &lt; ($page*20)+1">
		<li>
			<a>
				<xsl:variable name="keyword_related" select="keyword[not(.=$keyword)]"/>
				<xsl:attribute name="href">
					<xsl:value-of select="concat($cgi_scripts, '/keyword.rhtml?keyword=', $keyword_related)"/>
				</xsl:attribute>
				<h3>
					<xsl:value-of select="$keyword_related"/>
				</h3>
				<xsl:value-of select="count"/>
			</a>
		</li>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>
