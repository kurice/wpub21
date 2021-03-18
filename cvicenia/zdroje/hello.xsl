<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
    <xsl:output
            method="html"
            encoding="UTF-8"
            indent="yes"
    />
	
    <xsl:template match="/">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
         
        <html>
            <head>
                <title>World of Heatlh</title>
            </head>
            <body>
				
                <h2>Table of Departments</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Department ID</th>
                            <th>Department Name</th>
                            <th>Head ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="world-of-health/departments/department"/>
                    </tbody>
                </table>
                
            </body>
        </html>
    </xsl:template>
	
    <xsl:template match="departments/department">
        <tr>
            <td>
                <xsl:apply-templates select="@idDepartment"/>
            </td>
            <td>
                <xsl:apply-templates select="name"/>
            </td>
            <td>
                <xsl:apply-templates select="@head"/>
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>