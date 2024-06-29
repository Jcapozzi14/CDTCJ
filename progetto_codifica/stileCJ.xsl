<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Progetto di Codifica di Testi</title>
                <link rel="stylesheet"
                    href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                <script src="script.js"></script>
                <link href="stileCJ.css" rel="stylesheet" type="text/css" /> 
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="//tei:title[@xml:lang='it']" />
                    </h1>
                </header>

                <nav class="navMenu">
                    <ul>
                        <li>
                            <a href="#pagina_P1">Pagina 1</a>
                        </li>
                        <li>
                            <a href="#pagina_P2_S1">Pagina 2</a>
                        </li>
                        <li>
                            <a href="#pagina_S2">Pagina 3</a>
                        </li>
                        <li>
                            <a href="#pagina_N">Pagina 4</a>
                        </li>
                        <li>
                            <a href="#pagina_B1">Pagina 5</a>
                        </li>
                        <li>
                            <a href="#pagina_B1_B2">Pagina 6</a>
                        </li>
                        
                    </ul>
                </nav>
                <div>
                    <div id="info">
                        
                        <div>
                            <xsl:apply-templates select="//tei:encodingDesc" /> <br/>
                            <xsl:apply-templates select="//tei:titleStmt" /> <br/>
                
                            <h2>Supporto Fisico</h2> <br/>
                            <xsl:apply-templates select="//tei:physDesc" /> <br/>
                            <xsl:apply-templates select="//tei:origin" /> <br/>
                            <xsl:apply-templates select="//tei:availability" />
                            
                        </div>
                    

                        <div id="fenomeni">
                            <div id="buttons">
                                <h3>Visualizza i fenomeni notevoli</h3>
                                <button id="b_orgName">Organizzazioni e organi di governo</button>
                                <button id="b_roleName">Ruoli</button>
                                <button id="b_persName">Persone</button>
                                <button id="b_date">Date</button>
                                <button id="b_country">Paesi</button>
                                <button id="b_luogo">Città e luoghi</button>
                                <button id="b_num">Numeri</button>
                                <button id="b_hide">Nascondi</button>
                            </div>
                        </div>
                    </div>
                </div>

                
                <article id="pagina_P1">
                    <h2> Pagina 1 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pagina_P1']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '1']" />
                        </div>
                    </div>
                </article>

                <article id="pagina_P2_S1">
                    <h2> Pagina 2 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pagina_P2_S1']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '2']" />
                        </div>
                    </div>
                </article>

                <article id="pagina_S2">
                    <h2> Pagina 3 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pagina_S2']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '3']" />
                        </div>
                    </div>
                </article>
                <article id="pagina_N">
                    <h2> Pagina 4 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pagina_N']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '4']" />
                        </div>
                    </div>
                </article>

                <article id="pagina_B1">
                    <h2> Pagina 5 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pagina_B1']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '5']" />
                        </div>
                    </div>
                </article>

                <article id="pagina_B1_B2">
                    <h2> Pagina 6 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pagina_B1_B2']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '6']" />
                        </div>
                    </div>
                </article>
               
            </body>
        </html>
    </xsl:template>


    <xsl:template match="tei:titleStmt">
        <h2>
            <xsl:value-of select="current()/tei:title" />
        </h2>
        <p> <xsl:value-of
            select="current()/tei:respStmt" /></p> <br/>
        <p>Autore: <xsl:value-of
                select="current()/tei:author" /></p>
    </xsl:template>

    <xsl:template match="tei:publicationStmt">
        <p>Publisher: <xsl:value-of select="current()/tei:publisher" /></p>
        <p>Date: <xsl:value-of
                select="current()/tei:date" /></p>
        <xsl:apply-templates
            select="current()/tei:availability" />
    </xsl:template>

    <xsl:template match="tei:sourceDesc">
        <h3>Informazioni</h3>
        <xsl:apply-templates select="current()/tei:msDes" />
    </xsl:template>
    <xsl:template match="tei:msDesc">
        <p>Fonte: <xsl:value-of select="current()/tei:msIdentifier/tei:msContents" /></p>
    
        
    </xsl:template>

    <xsl:template match="tei:msDesc">
        <p>Supporto cartaceo: <xsl:value-of select="current()/tei:msIdentifier/tei:physDesc" /></p>
        <p> Storia: <xsl:value-of
                select="current()/tei:msIdentifier/tei:history" /></p>
        
    </xsl:template>

   <xsl:template match="tei:lb[not(@break)]"> 
        <br />
       
    </xsl:template>

    <xsl:template match="hi[@rend='italic']">

      <xsl:attribute name="class">hi</xsl:attribute>
      <xsl:apply-templates/>
    
    </xsl:template>


    <xsl:template match="tei:persName">
        <persname>
            <xsl:apply-templates />
        </persname>
    </xsl:template>

   
    <xsl:template match="tei:country">
        <country>
            <xsl:apply-templates />
        </country>
    
    </xsl:template>



    <xsl:template match="tei:date">
        <date>
            <xsl:apply-templates />
        </date>
    </xsl:template>

    <xsl:template match="tei:orgName">
        <orgName>
            <xsl:apply-templates />
        </orgName>
    </xsl:template>
    

    <xsl:template match="tei:num">
        <num>
            <xsl:apply-templates />
        </num>
    </xsl:template>

    <xsl:template match="tei:roleName">
        <roleName>
            <xsl:apply-templates />
        </roleName>
    </xsl:template>


    <xsl:template match="tei:pb">
        <xsl:element name="div">
            <xsl:attribute name="id">pagina.<xsl:value-of select="current()/@n" /></xsl:attribute>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="concat(@xml:id, '.png')" />
            </xsl:attribute>
        </xsl:element>
    </xsl:template>

   

    <xsl:template match="name[@type='luogo']">
        <li>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>



</xsl:stylesheet>