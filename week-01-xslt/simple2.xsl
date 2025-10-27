<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
        <head>
            <style>
                body { 
                    font-family: Arial, sans-serif; 
                    background-color: #f0f0f0;
                    padding: 20px;
                    }
                    h1 { 
                    color: #333; 
                    }
                    ul { 
                    list-style: none; 
                    }
                    li { 
                    background: white; 
                    padding: 10px; 
                    margin: 5px 0;
                    border-radius: 5px;
                }
            </style>
        </head>
      <body>
        <h1>People List</h1>
        <ul>
          <xsl:for-each select="people/person">
            <li>
                <strong><xsl:value-of select="name"/></strong> 
                (<xsl:value-of select="age"/> years old)
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>