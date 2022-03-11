<root xmlns:hs = "http://www.w3.ord/1999/XSL/Transform"
xmlns:c = "http://www.w3.ord/1999/XSL/Transform">

<xsl:stylesheet version= "1.0">



    <html>
        <body>
            <h2>Student List</h2>

            <hs:table border = "1">
                <hs:tr>
                    <hs:th>First Name</hs:th>
                    <hs:th>Last Name</hs:th>
                    <hs:th>Student ID</hs:th>
                </hs:tr>

                <xsl:for-each select = "student">
                    <hs:tr> 
                        <hs:td> <xsl:value-of select = "firstname" />
                        </hs:td>
                         <hs:td> <xsl:value-of select = "lastname" />
                        </hs:td>
                        <hs:td> <xsl:value-of select = "studentID" />
                        </hs:td>
                    </hs:tr>
                </xsl:for-each>
            </hs:table>



              <c:table border = "1">
                <c:tr>
                    <c:th>First Name</c:th>
                    <c:th>Last Name</c:th>
                    <c:th>Student ID</c:th>
                </c:tr>

                <xsl:for-each select = "student">
                    <c:tr> 
                        <c:td> <xsl:value-of select = "firstname" />
                        </c:td>
                         <c:td> <xsl:value-of select = "lastname" />
                        </c:td>
                        <c:td> <xsl:value-of select = "studentID" />
                        </c:td>
                    </c:tr>
                </xsl:for-each>
            </c:table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>

</root>