<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
	<keywords>
		<xsl:for-each select="books/item/keywords/keyword">
			<xsl:variable name="keyword" select="normalize-space(text())" />
			<xsl:if test="not(./preceding::keyword=$keyword)">
				<xsl:call-template name="define_keyword">
					<xsl:with-param name="name" select="normalize-space()"/>
				</xsl:call-template>
			</xsl:if>
		</xsl:for-each>
	</keywords>
</xsl:template>

<xsl:template name="define_keyword">
	<xsl:param name="name" select="''"/>
	<keyword>
		<name><xsl:value-of select="$name"/></name>
		<count>
			<xsl:value-of select="count(./following::keyword[.=$name])+1"/>
		</count>
	</keyword>
</xsl:template>

</xsl:stylesheet>
