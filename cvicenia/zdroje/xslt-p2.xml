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
							<th>Room References</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="world-of-health/departments/department"/>
                    </tbody>
                </table>
				
				<h2>List of Rooms</h2>
                <ol>
                    <xsl:apply-templates select="world-of-health/rooms"/>
                </ol>
                
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
			<td>
                <ul>
                    <xsl:apply-templates select="//room[@department = $idDepartment]" mode="roomOfDepartment"/>
                </ul>
            </td>
        </tr>
    </xsl:template>
	
	<xsl:template match="rooms/room">
        <xsl:element name="li">
            <xsl:attribute name="id">
                <xsl:value-of select="concat('room-', @idRoom)"/>
            </xsl:attribute>
            <xsl:text>Room </xsl:text>
            <xsl:value-of select="@idRoom"/>
            <xsl:text>: </xsl:text>
            <xsl:value-of select="name"/>
        </xsl:element>
    </xsl:template>
	
	<xsl:template match="room" mode="roomOfDepartment">
        <li>
            <xsl:element name="a">
                <xsl:attribute name="href">#room-<xsl:value-of select="@idRoom"/></xsl:attribute>
                <xsl:value-of select="name"/>
            </xsl:element>
        </li>
    </xsl:template>
    
</xsl:stylesheet>