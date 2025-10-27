<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>My Photo Album</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        padding: 20px;
                        margin: 0;
                    }
                    .container {
                        max-width: 1200px;
                        margin: 0 auto;
                        background: white;
                        padding: 30px;
                        border-radius: 10px;
                    }
                    h1 {
                        color: #333;
                        text-align: center;
                    }
                    .photo-grid {
                        display: grid;
                        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
                        gap: 20px;
                        margin-top: 30px;
                    }
                    .photo-card {
                        background: #f8f9fa;
                        border-radius: 8px;
                        padding: 20px;
                        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                    }
                    .photo-card h3 {
                        margin-top: 0;
                        color: #667eea;
                    }
                    .photo-info {
                        color: #666;
                        font-size: 14px;
                    }
                    .photo-info span {
                        display: block;
                        margin: 5px 0;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>📷 My Photo Album</h1>
                    <div class="photo-grid">
                        <!-- HIER KOMEN DE PHOTO CARDS (via XSLT loop) -->
                        <xsl:for-each select="album/photo">
                        <!-- Elke photo moet een card zijn zoals hieronder: -->
                        <div class="photo-card">
                            <h3><xsl:value-of select="description"/></h3>
                            <div class="photo-info">
                                <span>📁 <xsl:value-of select="filename"/></span>
                                <span>📅 <xsl:value-of select="date"/></span>
                                <span>📍 <xsl:value-of select="location"/></span>
                            </div>
                        </div>
                        </xsl:for-each>
                        <!-- Herhaal voor elke photo -->
                    </div>
                </div>
            </body>
            </html>
    </xsl:template>
</xsl:stylesheet>