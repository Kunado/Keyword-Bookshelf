<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
	<relations>
		<xsl:for-each select="books/item">
			<xsl:variable name="keyword1" select="normalize-space(./keywords/keyword[position()=1])" />
			<xsl:variable name="keyword2" select="normalize-space(./keywords/keyword[position()=2])" />
			<xsl:variable name="keyword3" select="normalize-space(./keywords/keyword[position()=3])" />
			<xsl:if test="not(./preceding::item[keywords/keyword=$keyword1 and keywords/keyword=$keyword2])">
				<xsl:apply-templates select=".">
					<xsl:with-param name="keyword1" select="$keyword1"/>
					<xsl:with-param name="keyword2" select="$keyword2"/>						
					</xsl:apply-templates>
			</xsl:if>
			<xsl:if test="not(./preceding::item[keywords/keyword=$keyword1 and keywords/keyword=$keyword3])">
				<xsl:apply-templates select=".">
					<xsl:with-param name="keyword1" select="$keyword1"/>
					<xsl:with-param name="keyword2" select="$keyword3"/>						
					</xsl:apply-templates>
			</xsl:if>
			<xsl:if test="not(./preceding::item[keywords/keyword=$keyword2 and keywords/keyword=$keyword3])">
				<xsl:apply-templates select=".">
					<xsl:with-param name="keyword1" select="$keyword2"/>
					<xsl:with-param name="keyword2" select="$keyword3"/>						
					</xsl:apply-templates>
			</xsl:if>
		</xsl:for-each>
	</relations>
</xsl:template>

<xsl:template match="item">
	<xsl:param name="keyword1"/>
	<xsl:param name="keyword2"/>
	<relation>
		<keyword><xsl:value-of select="$keyword1"/></keyword>
		<keyword><xsl:value-of select="$keyword2"/></keyword>
		<count><xsl:value-of select="count(./following::item[keywords/keyword=$keyword1 and keywords/keyword=$keyword2])+1"/></count>
	</relation>
</xsl:template>

</xsl:stylesheet>
