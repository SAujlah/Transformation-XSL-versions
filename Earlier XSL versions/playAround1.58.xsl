<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='2.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/> -->

<!--<xsl:output use-character-maps="cm1"/>

<xsl:character-map name="cm1">
	<xsl:output-character character="&quot;" string=""/>
</xsl:character-map>  -->

<xsl:template match="/">

	<root>
		<xsl:for-each select="entity/entity">
			<entityName>
				<xsl:value-of select="@name"/>
			</entityName>
			
			<entityClass>
				<xsl:value-of select="@class"/>
			</entityClass>
			
		</xsl:for-each>
		
		<xsl:for-each select="entity/entity/property[@name='value']">  <!-- if get all properties here specify something to get just what you want-->
			
				<property> 
					<xsl:attribute name="name">
						<xsl:value-of select="@name"/>
					</xsl:attribute>
				
					<xsl:attribute name="class">
						<xsl:value-of select="@class"/>
					</xsl:attribute>
				
					<xsl:attribute name="value">
				<!--		<xsl:value-of select="@value"/> -->
						<xsl:value-of select="replace(@value, '&quot;', '\\&quot;')"/>.
					</xsl:attribute>
				
				</property>
			
		</xsl:for-each>
		
		<xsl:for-each select="entity/link/@port">
		
			<linkPort>
				<xsl:value-of select="."/>
			</linkPort>
			
		</xsl:for-each>
		
		
	
	</root>
	
</xsl:template>

</xsl:stylesheet>
	
	