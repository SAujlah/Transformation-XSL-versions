<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <!-- your rules here -->
  
  <xsl:template match="/">
  

	<xsl:for-each select="entity/entity">
	

	
		<xsl:element name="entityName">
			<xsl:value-of select="@name"/>
		</xsl:element> 
	
		<xsl:element name="entityClass">
			<xsl:value-of select="@class"/>
		</xsl:element> 
	
		 		
	</xsl:for-each>

		<xsl:element name="propertyName">
			<xsl:value-of select="entity/entity/property/@name"/>
		</xsl:element>
    
	
		<xsl:element name="propertyClass">
			<xsl:value-of select="entity/entity/property/@class"/>
		</xsl:element>
	
	
		<xsl:element name="propertyValue">
			<xsl:value-of select="entity/entity/property/@value"/> 
		</xsl:element>
	
	
  <xsl:for-each select="entity/link/@port">
	

		<xsl:element name="linkPort">
			<xsl:value-of select="."/> 
		</xsl:element> 
       
  
  	</xsl:for-each>   
	  
  
 </xsl:template>
  
  
  
</xsl:stylesheet>