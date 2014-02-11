<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
 <xsl:output method="html"/>
 <xsl:include href="html/fcs/fcs_common.xsl"/>
 <xsl:include href="html/fcs/stress.xsl"/>
 <xsl:include href="html/atomic-robo/character.xsl"/>
 <xsl:include href="html/atomic-robo/copyright.xsl"/>
 <xsl:template match="/">
  <xsl:apply-templates select="character"/>
 </xsl:template>
</xsl:stylesheet>
