<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

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
		
		<xsl:for-each select="entity/entity/property">  <!-- if get all properties here specify something to get just what you want-->
			<xsl:if test="@name = "value"">
				<property> 
					<xsl:attribute name="name">
						<xsl:value-of select="@name"/>
					</xsl:attribute>
				
					<xsl:attribute name="class">
						<xsl:value-of select="@class"/>
					</xsl:attribute>
				
					<xsl:attribute name="value">
						<xsl:value-of select="@value"/>
					</xsl:attribute>
				
				</property>
			</xsl:if>	
		</xsl:for-each>
		
		<xsl:for-each select="entity/link/@port">
		
			<linkPort>
				<xsl:value-of select="."/>
			</linkPort>
			
		</xsl:for-each>
		
		
	
	</root>
	
</xsl:template>

</xsl:stylesheet>
	
	