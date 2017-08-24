<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/> 

<!-- This stylesheet extracts the required xml element and attribute tags and their values, 
from the original xml/MoML file for the Hello World demo in the Kepler workflow system. -->
 

<xsl:template match="/">

	<root>
	
		<xsl:for-each select="entity/entity">
		
			<entity>
			
				<xsl:attribute name="entityName">
					<xsl:value-of select="@name"/>
				</xsl:attribute>
			
				<xsl:attribute name="entityClass">
					<xsl:value-of select="@class"/>
				</xsl:attribute>
			
			</entity>
			
		</xsl:for-each>
		
		<xsl:for-each select="entity/entity/property[@name='value']"> 
		
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
			
		</xsl:for-each> 
		
		<xsl:for-each select="entity/link">
		
			 <link>
			 
				<xsl:attribute name="port">
					<xsl:value-of select="@port"/>
				</xsl:attribute>
			
			    <xsl:attribute name="relation">
					<xsl:value-of select="@relation"/>
			    </xsl:attribute>
			
			</link>
		
		</xsl:for-each>
		
	</root>
	
</xsl:template>

</xsl:stylesheet>
	
	