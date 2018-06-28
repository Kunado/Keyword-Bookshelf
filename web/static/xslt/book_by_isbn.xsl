<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="isbn" />
	<xsl:param name="cgi_scripts" />
<xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/books">
	<xsl:apply-templates select="item[isbn=$isbn]">
	</xsl:apply-templates>
</xsl:template>

<xsl:template match="item">
	<h1>
		<xsl:variable name="title" select="title"/>
		<xsl:value-of select="concat('book: ', $title)"/>
	</h1>
	<section>
		<h2>
			<xsl:variable name="creator" select="creator"/>
			<xsl:value-of select="concat('creator: ', $creator)"/>
		</h2>
		<ul>
			<li>
				<xsl:variable name="publisher" select="publisher"/>
				<xsl:value-of select="concat('publisher: ', $publisher)"/>
			</li>
			<li>
				<xsl:variable name="year" select="date/yaer"/>
				<xsl:value-of select="concat('published in: ', $year)"/>
			</li>
			<li>
				<xsl:variable name="isbn" select="isbn"/>
				<xsl:value-of select="concat('ISBN: ', $isbn)"/>
			</li>
		</ul>
		<p>
			<xsl:value-of select="description"/>
		</p>
	</section>
</xsl:template>

</xsl:stylesheet>
