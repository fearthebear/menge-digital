<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/current/xhtml/chunk.xsl"/>
	<!-- <xsl:param name="toc.max.depth">1</xsl:param> -->
	<!-- <xsl:param name="paper.type" select="A4"/>
	<xsl:param name="page.orientation" select="portrait" /> -->
	<!-- mit fop 1.1 nur TTF System-Schriften -->
	<xsl:param name="html.stylesheet" select="'docbook.css'"/>
	<xsl:param name="make.clean.html" select="1" />
	<xsl:param name="custom.css.source">custom.css.xml</xsl:param>
</xsl:stylesheet>
