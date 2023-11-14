<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <!-- ebb: This is an identity transformation XSLT that's ONLY to be used to 
    patch or change the XML. It just remakes the original XML file. 
    
    Use a TOTALLY DIFFERENT XSLT to output HTML!  See your homeworks. :-) 
    -->
    
  <xsl:template match="panel">
      <panel num="{count(preceding-sibling::panel) + 1}">
          <xsl:apply-templates/>
          
      </panel>
      
      
  </xsl:template>
    
    
    
    
    
</xsl:stylesheet>