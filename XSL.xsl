<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : XSL.xsl
    Created on : 18. dubna 2017, 10:36
    Author     : Marek Dvořák
    Description: Vybrání všech účtů (seřazených podle abecedy) a jejich ID a oblíbených týmů.
    GitHub     : https://github.com/marekdvorakcz/ProjektXML
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        {
            "Ucty":
            [
            
            <xsl:for-each select="hra/ucet">
			<xsl:sort select="prezdivka"/>
                        {
				"ID": "<xsl:value-of select="@id"/>",
                                "Prezdivka": "<xsl:value-of select="prezdivka"/>",
				"Oblibeny_tym": "<xsl:value-of select="oblibeny_tym"/>"
			}<xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>
            ]
        }
            
       
    
    </xsl:template>

</xsl:stylesheet>
