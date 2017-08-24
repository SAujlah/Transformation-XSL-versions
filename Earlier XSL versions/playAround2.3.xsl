<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='2.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
<xsl:variable name="futureYamlOutput">

<!-- code to add/new elements to add for command line tool-->
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

	<!-- new elements to add for message yaml file-->


   <message>Hello world!</message>  

	
</root>

</xsl:variable>

<xsl:copy-of select="$futureYamlOutput" />

<!-- new elements to add for message yaml file-->


<!--<message>Hello world!</message>   -->

 </xsl:template>
 
 <xsl:template match="root/propertyValue">
 <xsl:result-document href="echo-job.xml">
	<message> <xsl:value-of select="propertyValue"/>
</message>
</xsl:result-document>
</xsl:template>

















</xsl:stylesheet>