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
				<style>
					th { background-color: #AAA; }
                    tr.even td { background-color: #DDD; }
					span.blue { color: blue; }
					span.red { color: red; }
                </style>
            </head>
            <body>
				
                <h2>Table of Departments</h2>
                <table>
                    <thead>
                        <tr>
							<th>#</th>
                            <th>Department ID</th>
                            <th>Department Name</th>
                            <th>Head Name</th>
							<th>Room References</th>
							<th>Features</th>
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
		<xsl:variable name="departmentId" select="@idDepartment"/>
		<xsl:variable name="siblingCount" select="count(preceding-sibling::department)"/>
        <tr>
			<xsl:if test="($siblingCount mod 2) = 0">
				<xsl:attribute name="class">odd</xsl:attribute>
			</xsl:if>
			<xsl:if test="($siblingCount mod 2) = 1">
				<xsl:attribute name="class">even</xsl:attribute>
			</xsl:if>
			<td>
                <xsl:value-of select="$siblingCount + 1"/>
            </td>
            <td>
                <xsl:apply-templates select="@idDepartment"/>
            </td>
            <td>
                <xsl:apply-templates select="name"/>
            </td>
            <td>
                <xsl:call-template name="roomHeadName">
                    <xsl:with-param name="headId" select="@head"/>
                </xsl:call-template>
            </td>
			<td>
                <ul>
                    <xsl:apply-templates select="//room[@department = $idDepartment]" mode="roomOfDepartment"/>
                </ul>
            </td>
			<td>
                <xsl:for-each select="./features/feature">
                    <xsl:sort select="text()" lang="sk" order="ascending"/>
					<xsl:choose>
                        <xsl:when test="concat(' ', normalize-space(@type), ' ') = ' t1 '">
                            <span class="blue"><xsl:value-of select="."/></span>
                        </xsl:when>
                        <xsl:when test="contains(concat(' ', normalize-space(@type), ' '), ' t2 ')">
                            <span class="red"><xsl:value-of select="."/></span>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="."/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:if test="position() != last()">
                        <xsl:text>, </xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
    </xsl:template>
	
	<xsl:template name="roomHeadName">
        <xsl:param name="headId" select="@head"/>
        <xsl:variable name="headName" select="//head[@idHead = $headId]/name"/>
        <xsl:if test="$headName">
            <xsl:value-of select="$headName"/>
        </xsl:if>
        <xsl:if test="not($headName)">
			<i>Neznámy</i>
		</xsl:if>
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