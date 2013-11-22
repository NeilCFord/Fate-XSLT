<?xml version="1.0" ?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
 <xsl:output method="html"/>
 <xsl:template match="character">
  <html>
   <xsl:call-template name="head">
    <xsl:with-param name="baseCSS">fcs</xsl:with-param>
    <xsl:with-param name="additionalCSS">sotc</xsl:with-param>
   </xsl:call-template>
   <body>
    <h1>
     <xsl:value-of select="id/charname"/>
    </h1>
    <table>
     <tr>
      <td width="55%">
       <xsl:apply-templates select="id"/>
       <table>
        <tr>
         <xsl:call-template name="refresh"/>
         <xsl:call-template name="current-fate-points"/>
        </tr>
       </table>
      </td>
      <td width="45%" id="fate-logo">
       <span id="sotc-logo">Spirit of the Century</span>
      </td>
     </tr>
    </table>
    <hr />
    <table>
     <tr>
      <td rowspan="2" width="40%">
       <xsl:apply-templates select="aspects"/>
       <xsl:apply-templates select="gadgets"/>
      </td>
      <td width="60%">
       <xsl:apply-templates select="skills">
        <xsl:with-param name="rootElement">diaspora</xsl:with-param>
       </xsl:apply-templates>
      </td>
     </tr>
     <tr>
      <td width="60%">
       <xsl:apply-templates select="stunts"/>
      </td>
     </tr>
    </table>
    <hr />
    <table>
     <tr>
      <td width="50%">
       <xsl:call-template name="sotc-stress"/>
      </td>
      <td width="50%">
       <xsl:call-template name="consequences"/>
      </td>
     </tr>
    </table>
    <xsl:apply-templates select="gear"/>
    <hr />
    <xsl:apply-templates select="phases"/>
    <xsl:apply-templates select="notes"/>
    <xsl:call-template name="sotc-copyright"/>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>