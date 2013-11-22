<?xml version="1.0" ?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
 <xsl:output method="html"/>
 <xsl:template match="id">
  <table border="1">
   <tr>
    <th colspan="2" class="sectionheader">ID</th>
   </tr>
   <tr>
    <td>
     <fieldset id="name">
      <xsl:choose>
       <xsl:when test="charname/@nickname">
        <legend class="label">
         <span>Name (<q>
           <xsl:value-of select="charname/@nickname"/>
          </q>)</span>
        </legend>
       </xsl:when>
       <xsl:otherwise>
        <legend class="label">
         <span>Name</span>
        </legend>
       </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="charname"/>
     </fieldset>
    </td>
   </tr>
   <tr>
    <td>
     <fieldset id="homeworld">
      <legend class="label">
       <span>Homeworld</span>
      </legend>
      <xsl:value-of select="homeworld"/>
     </fieldset>
    </td>
   </tr>
   <tr>
    <td>
     <fieldset id="cluster">
      <legend class="label">
       <span>Cluster</span>
      </legend>
      <xsl:value-of select="cluster"/>
     </fieldset>
    </td>
   </tr>
  </table>
 </xsl:template>
</xsl:stylesheet>