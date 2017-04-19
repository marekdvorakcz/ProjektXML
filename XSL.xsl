<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : XSL.xsl
    Created on : 19. dubna 2017, 10:36
    Author     : Marek
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        {
        <xsl:for-each select="hra">
            
            <xsl:for-each select="ucet">
			{
				"Ucet": <xsl:value-of select="prezdivka"/>,
				"Oblibeny_tym": <xsl:value-of select="oblibeny_tym"/>,
			}</xsl:for-each>,<xsl:if test="position() != last()">,</xsl:if>
            }
            </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
