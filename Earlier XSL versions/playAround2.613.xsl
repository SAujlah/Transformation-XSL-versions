<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='2.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  
  <xsl:choose>
  
  <xsl:when test="/root[count(entityName) = 2] and /root[count(property) = 1]">

  
<xsl:variable name="futureYamlOutput">

<!--code to add/new elements to add for command line tool -->
<root>
	
	<cwlVersion>v1.0</cwlVersion>
	<class>CommandLineTool</class>
	<baseCommand>echo</baseCommand>
	<inputs>
		<message>
			<type>string</type>
			<inputBinding>
				<position>1</position>
			</inputBinding>
		</message>
	</inputs>
	<outputs> [] </outputs>

	

	
</root>

</xsl:variable>

<xsl:copy-of select="$futureYamlOutput"/> 

</xsl:when>

 <xsl:otherwise>
	Sorry the xml document you are using cannot be transformed using this xsl stylesheet
 
 </xsl:otherwise>
 
</xsl:choose>

</xsl:template>












</xsl:stylesheet>