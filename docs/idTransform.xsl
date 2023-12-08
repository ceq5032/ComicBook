<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    version="3.0">

    <xsl:mode on-no-match="shallow-copy"/>

<!-- ebb: This Identity Transformation stylesheet is designed to patch 
    the source XML file. It outputs a new version of the XML source file with 
    a small change in it. Don't use this to output HTML! -->


    <xsl:template match="panel">
        <panel num="{count(preceding-sibling::panel) + 1}">
            <xsl:apply-templates/>

        </panel>


    </xsl:template>
    




</xsl:stylesheet>
