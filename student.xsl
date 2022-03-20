<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">

   <xsl:output method="html" indent="yes"/>
   <xsl:mode on-no-match="shallow-copy"/>

   <xsl:template match="/*" mode="#all">
      <html>
         <body>
            <h2>Student List</h2>
            <xsl:apply-templates select="*"/>
            <table border="1" style="width:100%;">
               <tr>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Student ID</th>
               </tr>
            <xsl:for-each select = "student">
               <tr>
                  <td>
                     {firstname}
                  </td>
                  <td>
                     {lastname}
                  </td>
                  <td>
                     {studentID}
                  </td>
               </tr>
            </xsl:for-each>
            </table>
         </body>
      </html>
      <!-- <xsl:copy>
         <xsl:apply-templates select="@*, node()" mode="#current"/>
      </xsl:copy> -->
   </xsl:template>

   <xsl:template match="student" mode="#default">
      <p style="color: red">First Name: {firstname}</p>
      <p style="color: blue">Last Name: {lastname}</p>
      <p style="color: green">Student ID:{studentID}</p>
   </xsl:template>

</xsl:stylesheet>