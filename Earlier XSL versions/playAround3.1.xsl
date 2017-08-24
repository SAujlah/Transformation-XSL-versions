<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<!--<message>Hello world!</message>   -->

  <xsl:template match="text()" />
 
 <xsl:template match="root/property">
 
 
	<message>
		<xsl:value-of select="@value"/>
	</message>

</xsl:template>

</xsl:stylesheet>