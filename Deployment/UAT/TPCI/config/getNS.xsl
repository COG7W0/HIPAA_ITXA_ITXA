<?xml version="1.0" encoding="UTF-8"?>

<!--/////////////////////////////////////////////////////////////////////////
  
	getNS.xsl
  
	Copyright (C) IBM Corporation 2005. All rights are reserved.
	
	This software is the property of of IBM Corporation and its
	licensors and contain their confidential trade secrets. Use,
	examination, copying, transfer and disclosure to others, in whole or in part,
	are prohibited except with the express prior written consent of 
	IBM Corporation.
  
  // Revision: 1.6
  //
  ////////////////////////////////////////////////////////////////////////-->

<xsl:stylesheet version="1.0"
								xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
								xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<xsl:output 	method="text"/>

	<!--// Constants ///////////////////////////////////////////////////////-->
	
	<xsl:param name="PAIR_DELIMITER" select="'='"/>
	<xsl:param name="LIST_DELIMITER" select="'?'"/>
	
	
	<!--// Main template ///////////////////////////////////////////////////-->
	
	<xsl:template match="/xsd:schema">
		<xsl:for-each select="./namespace::*">
			<xsl:choose>
				<!-- Default namespace (no prefix) -->
				<xsl:when test="local-name(.)=''">
					<xsl:if test="normalize-space(.) != 'http://www.w3.org/XML/1998/namespace' and
												normalize-space(.) != 'http://www.w3.org/2001/XMLSchema'">
						<xsl:text>xmlns</xsl:text>
						<xsl:value-of select="$PAIR_DELIMITER"/>
						<xsl:value-of select="normalize-space(.)"/>
						<xsl:value-of select="$LIST_DELIMITER"/>
					</xsl:if>
				</xsl:when>

				<!-- Namespaces with prefixes -->
				<xsl:otherwise>
					<xsl:if test="normalize-space(.) != 'http://www.w3.org/XML/1998/namespace' and
												normalize-space(.) != 'http://www.w3.org/2001/XMLSchema'">
						<xsl:value-of select="local-name(.)"/>
						<xsl:value-of select="$PAIR_DELIMITER"/>
						<xsl:value-of select="normalize-space(.)"/>
						<xsl:value-of select="$LIST_DELIMITER"/>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>

		<!-- Check for the nillable attribute -->
		<xsl:if test="//*/@nillable">
			<xsl:text>xsi</xsl:text>
			<xsl:value-of select="$PAIR_DELIMITER"/>
			<xsl:text>http://www.w3.org/2001/XMLSchema-instance</xsl:text>
			<xsl:value-of select="$LIST_DELIMITER"/>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
