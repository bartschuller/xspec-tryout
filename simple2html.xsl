<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s2h="urn:s2h"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="#all"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="s2h:titleize(simple/kop)"/>
                </title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:function name="s2h:titleize" as="xs:string">
        <xsl:param name="title"/>
        <xsl:value-of select="upper-case($title)"/>
    </xsl:function>
    
    <xsl:template match="simple|sectie">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="simple/kop">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="sectie/kop">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <xsl:template match="para">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
</xsl:stylesheet>