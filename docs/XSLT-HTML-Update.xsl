<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes"/>
    
    <!-- Match the root element and process its children -->
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
            <head>
                <title>The Walking Dead</title>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet" type="text/css" href="webstyle.css" />
                <link rel="icon" type="image/png" href="images/bloodyhand.png" />
                
            </head>
            
            <body>
                <header>
                    <img src="images/TWD_headerS.png"
                        alt="The Walking Dead. A header with the title and zombies in the background" />
                </header>
                <ul class="htop">
                    
                    <li><a href="index.html">About</a></li>
                    <li><a href="characters-output.html">Characters</a></li>
                    <li class="active"><a href="summary.html">Summary</a></li>
                    <li><a href="code.html">Code</a></li>
                    <li><a href="cmblODD.html">Comic ODD</a></li>
                    
                </ul>
                    <div id="table">
                        <table>
                            <tr>
                                <th>Character</th>
                                <th>Page and Panel</th>
                            </tr>
                            <xsl:apply-templates select="//section" mode="toc"/>
                        </table>
                    </div>
                    
                    <section id="readingView">
                        <xsl:apply-templates select="//section"/>
                    </section>
                </body>
        </html>
    </xsl:template>
    
    <xsl:template match="section" mode="toc">
        <xsl:variable name="currentPage" select="count(preceding::section) + 1" />
        <xsl:for-each select=".//who[not(. = preceding::who)]">
            <tr>
                <td>
                    <a href="#P{$currentPage}">
                        <xsl:value-of select="."/>
                    </a>
                </td>
                <td>
                    <xsl:value-of select="$currentPage"/>
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="../../@class"/> <!-- Assuming page number is stored in the class attribute of section -->
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select=".//panel"/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    
    
</xsl:stylesheet>