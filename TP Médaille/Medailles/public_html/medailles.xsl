<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : JO.xsl
    Created on : 11 septembre 2018, 10:41
    Author     : tmichaud
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="tableau">
        <html>     
             <head>
                <title>J-O</title>
                
            </head>       
            <body>
                <table> 
                    <tr>
                        <th>Pays</th>
                        <th>Or</th>
                        <th>Argent</th>
                        <th>Bronze</th>
                    </tr>               
                    <xsl:apply-templates />
                </table>                
            </body>
        </html>
    </xsl:template>
    
    
    <xsl:template match="ligne">
        <table style="border: 1px solid black; border-collapse: collapse">
            <xsl:apply-templates />            
        </table> 
    </xsl:template>
    
    
    <xsl:template match="pays">
        <td style="border: 1px solid black; border-collapse: collapse">
            <xsl:value-of select="@nomDePays"/>
            <xsl:apply-templates />
        </td>
    </xsl:template>
    
    
    <xsl:template match="medaille">
        <td style="border: 1px solid black; border-collapse: collapse; text-align: center">
            <xsl:value-of select="." />
        </td>        
    </xsl:template>
    
    
</xsl:stylesheet>
