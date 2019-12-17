<xsl:stylesheet version="2.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="listitem">
		<xsl:variable name="nbr">
			<xsl:number level="any" format="01" />
		</xsl:variable>
		<xsl:result-document href="output/g-{$nbr + 30}.xml" method="xml">
			<formalpara xmlns="http://docbook.org/ns/docbook" xmlns:xi="http://www.w3.org/2001/XInclude" version="5.0">
				<title><xsl:copy-of select="$nbr + 30" /></title>
				<para>
					<xsl:value-of select="."/>
				</para>
			</formalpara>
		</xsl:result-document>
	</xsl:template>
</xsl:stylesheet>
