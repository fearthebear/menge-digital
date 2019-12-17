<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/current/fo/docbook.xsl"/>
	<!-- <xsl:param name="toc.max.depth">2</xsl:param> -->
	<xsl:param name="paper.type">A4</xsl:param>
	<xsl:param name="page.orientation">portrait</xsl:param>
	<xsl:param name="body.start.indent">0pt</xsl:param>
	<!-- mit fop 1.1 nur TTF System-Schriften -->
	<!-- <xsl:param name="body.font.family">DejaVu Serif Condensed</xsl:param>
	<xsl:param name="title.font.family">DejaVu Sans</xsl:param> -->
	<xsl:param name="body.font.family">GFS Didot</xsl:param>
	<xsl:param name="title.font.family">GFS Didot</xsl:param>
	<xsl:param name="body.font.master">12</xsl:param>
	<xsl:param name="hyphenate">true</xsl:param>
	<!-- <xsl:param name="column.count.body" select="2"></xsl:param> -->
	<xsl:attribute-set name="component.title.properties">
		<xsl:attribute name="break-after">page</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="section.title.level1.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 1.6"></xsl:value-of>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
		<xsl:attribute name="text-transform">uppercase</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="section.title.level2.properties">
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 1.4"></xsl:value-of>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<!-- <xsl:attribute name="font-weight">normal</xsl:attribute>
		<xsl:attribute name="text-transform">uppercase</xsl:attribute> -->
	</xsl:attribute-set>
	
	<xsl:param name="toc.indent.width">18</xsl:param>
	
	<xsl:attribute-set name="toc.line.properties">
		<xsl:attribute name="font-weight">
			<xsl:choose>
				<xsl:when test="self::chapter">bold</xsl:when>
				<xsl:otherwise>normal</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:attribute-set>
</xsl:stylesheet>
