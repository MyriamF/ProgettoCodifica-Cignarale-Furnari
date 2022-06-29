<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei ="http://www.tei-c.org/ns/1.0">


    <xsl:output method="html" encoding="UTF-8" indent="yes" />		

<xsl:template match="/">
  <html>
	<head>
    <title><xsl:value-of select="//tei:titleStmt/tei:title"></xsl:value-of></title>
	<link rel="stylesheet" type="text/css" href="fogliodistile.css"></link>
	<script src="JS.js" type="text/JavaScript"></script>
	<script src="variabiliJS.js" type="text/JavaScript"></script>
	</head>

	<body>
		<header id="main-header" class="fixed-header">
			<nav>
			<ul>
				<li class="active"><a href="#first">Introduzione</a></li>
				<li><a href="#section-2">Pagina 19</a></li>
				<li><a href="#section-3">Pagina 20</a></li>
				<li><a href="#section-4">Informazioni</a></li>
			</ul>
			</nav>
		</header>
        
		<section id="first">
		<div class="inner">
			<h1><xsl:value-of select="//tei:titleStmt/tei:title"></xsl:value-of></h1>
			<h3><xsl:value-of select="//tei:respStmt"></xsl:value-of></h3>
			
			<br/>
			<br/>
			<br/>

			<p class="frasi" id="intro"><xsl:value-of select="//tei:msContents/tei:summary"></xsl:value-of></p>
        </div>
		</section>
<br/>
<br/>
<br/>

	    <section id="section-2">
        <div class="titolo">
        <h2>Pagina 19</h2>
	    </div>
	
	   <a id= "bottone" type="button" href="retro19.jpg" style="float: left; margin-right: -250px; margin-top: 30px; margin-left: 50px;"  >RETRO</a>
		  <xsl:apply-templates select="//tei:surface[@xml:id='facspage19']"/><!--Immagine-->
                                         

		    
		  <div class="storia" id="storia3">
		  <p class="frasi" id="line">
			 <xsl:apply-templates select="//tei:div[@xml:id='Testo_pg19']/tei:fw"/>
			<xsl:apply-templates select="//tei:div[@xml:id='Testo_pg19']" mode="testo"/>
 			</p>

		  	<input class="showbutton" type="button" value="Mostra" onclick="this.value=this.value=='Mostra'?'Nascondi':'Mostra';"/>
				<div class="nascondi">
					<div>
					<h3>TRADUZIONE</h3>
					<div style="overflow-y: scroll; width:1000px; height:160px">
					<p class="frasi" id="line"> 
						<xsl:apply-templates select="//tei:div[@xml:id='Traduzione_pg19']" mode="traduzione"/>
					</p>
					</div>
				</div>
			</div>
		</div>
			
	</section>
<p>
<br/>
<br/>
<br/>
<br/>
</p>

	<section id="section-3">
      <div class="titolo">
	    <h2>Pagina 20</h2>
	  </div>

	   <a id= "bottone" type="button" href="retro20.jpeg" style="float: left; margin-right: -250px; margin-top: 30px; margin-left: 50px;"  >
		RETRO
	   </a>
		<xsl:apply-templates select="//tei:surface[@xml:id='facspage20']"/><!--Immagine-->
		
			<div class="storia" id="storia3">
				<p class="frasi" id="line">
				<xsl:apply-templates select="//tei:div[@xml:id='Testo_pg20']/tei:fw"/>
				<xsl:apply-templates select="//tei:div[@xml:id='Testo_pg20']" mode="testo"/>
				</p>

				<input class="showbutton" type="button" value="Mostra" onclick="this.value=this.value=='Mostra'?'Nascondi':'Mostra';"/>
				<div class="nascondi2">
					<div>
					<h3>TRADUZIONE</h3>
					<div style="overflow-y: scroll; width:950px; height:100px">
					<p class="frasi" id="line"> 
				    	<xsl:apply-templates select="//tei:div[@xml:id='Traduzione_pg20']" mode="traduzione"/>
					</p>
					</div>
			    </div>
			</div>
		</div>
 	
	</section>

	<p>
		<br/>
		<br/>
		<br/>
		<br/>
	</p>

	<section id="section-4">
      <div class="titolo">
      <h2>Parole Chiave</h2>
	  <div class ="glossario">
	 <xsl:apply-templates select="//tei:div[@xml:id='glossary']"/>
	 <br/>
	 <br/>
	 <xsl:apply-templates select="//tei:respStmt[@xml:id='MF']"/>
    <br/>
    <br/>
    <xsl:apply-templates select="//tei:respStmt[@xml:id='EF']"/>

   </div>
</div>

	  
</section>
	
		
	</body>
  </html>
</xsl:template>



  
<xsl:template match="//tei:titleStmt">  <!--formattazione titolo-->
    
	<xsl:value-of select="./tei:title"/>
	<xsl:for-each select="./tei:respStmt">
		<xsl:value-of select="concat(./tei:resp,' ')"/>
		<xsl:choose>
			<xsl:when test="count(./tei:name)=2">
				<xsl:value-of select="concat(./tei:name,', ',./tei:name(2))"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat(./tei:name,', ')"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:for-each>

</xsl:template>
  


<xsl:template match="//tei:surface[@xml:id='facspage19']"> <!--Immagine pagina 19-->
        <div class="immagini">
        <img alt="pagina 19" usemap="#map2">
            <xsl:attribute name="src">
                <xsl:value-of select="./tei:graphic/@url"/>
            </xsl:attribute>
        </img>

        <map name="map2">
            <xsl:for-each select="//tei:surface[@xml:id='facspage19']//tei:zone">
                <xsl:element name="area" use-attribute-sets="attrMap"/>
            </xsl:for-each>
        </map>
        </div>
    </xsl:template>

	<xsl:template match="//tei:surface[@xml:id='facspage20']">		<!--Immagine pagina 20-->
		<div class="immagini">
			<img alt="pagina 20" usemap="#map2">
				<xsl:attribute name="src">
					<xsl:value-of select="./tei:graphic/@url"/>
				</xsl:attribute>
			</img>

			<map name="map2">
				<xsl:for-each select="//tei:surface[@xml:id='facspage19']//tei:zone">
					<xsl:element name="area" use-attribute-sets="attrMap"/>
				</xsl:for-each>
			</map>
		</div>
	</xsl:template>

	 
    <xsl:attribute-set name="attrMap">
        <xsl:attribute name="shape">rect</xsl:attribute>
        <xsl:attribute name="coords"><xsl:value-of select="concat(./@ulx,',',./@uly,',',./@lrx,',',./@lry)"/></xsl:attribute>
        <xsl:attribute name="href"><xsl:value-of select="concat('##',./@xml:id)"/></xsl:attribute>
    </xsl:attribute-set>


	<!--Patole Chiave-->
	<xsl:template match="//tei:div[@xml:id='glossary']" name="ParoleChiave">
		<ul>
			<xsl:for-each select=".//tei:item">
				<li>
					<xsl:element name="term" use-attribute-sets="terminiLista">
						<xsl:value-of select="./tei:term"/>
					</xsl:element>:
					<xsl:value-of select="./tei:gloss"/>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:attribute-set name="terminiLista">
		<xsl:attribute name="id">
			<xsl:value-of select="./tei:term/@xml:id"/>
		</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="terminiTesto">
		<xsl:attribute name="href">
			<xsl:value-of select="./@ref"/>
		</xsl:attribute>
	</xsl:attribute-set>

   <xsl:template match="tei:div[@xml:id='Testo_pg19']/tei:fw"> <!--Numero pagina 19-->
        <xsl:value-of select="."/>
    </xsl:template>
	
	<xsl:template match="tei:div[@xml:id='Testo_pg20']/tei:fw">		<!--Numero pagina 19-->
		<xsl:value-of select="."/>
	</xsl:template>
	
	
	
	<!-- formattazione testo -->

<xsl:template match="//tei:div[@xml:id='Testo_pg19']" name="formattazioneTesto" mode="testo">
 
	  <xsl:for-each select="./tei:ab//node()">
	     <xsl:choose>
		 
           <xsl:when test="name()='lb'"> <!--a capo-->
              <br/>
           </xsl:when> 

	       <xsl:when test="name()='unclear'"> <!--testo sbiadito o poco leggibile-->
			 <xsl:value-of select="concat(. , ' ')"/> 
           </xsl:when>

		    <xsl:when test="name()='seg'"> <!--testo semplice-->
                 <xsl:value-of select="concat(. , ' ')"/> 
            </xsl:when>

			 <xsl:when test="name()='w'"> <!--parole semplici-->
                 <xsl:value-of select="concat(. , ' ')"/> 
            </xsl:when>
			

		<xsl:when test="name()='term'"> <!-- elementi terminologici -->
			<xsl:if test="name(..)='ab' and not(.//tei:unclear) and not(name(./*)='emph')">
            <span > <xsl:value-of select="concat(. , ' ')"/></span>
		    </xsl:if>
           <xsl:choose>
			 <xsl:when test="name(./*)='emph'"> <!-- elementi terminologici sottolineati -->
                 <u><xsl:value-of select="concat(. , ' ')"/></u>
		</xsl:when>
			</xsl:choose>
		</xsl:when>

		<xsl:when test="name()='add'"> <!--aggiunte-->
		   <xsl:choose>
		      <xsl:when test="name(./*)='unclear'"> 
			  <!-- non aggiunge testo perché già gestito dalla funzione 'unclear' -->             
		 </xsl:when>   	
	    <xsl:when test="name(./*)='choice'"> <!-- tag choice figlio di add -->
                <xsl:value-of select="concat(./tei:corr , ' ')"/>
         </xsl:when>
            <xsl:otherwise>
				<xsl:value-of select="concat(. , ' ')"/>
			</xsl:otherwise>
            </xsl:choose>
         </xsl:when> 

		<xsl:when test="name()='choice'"> <!--gestione abbreviazioni ed errori di scrittura -->
		   <xsl:if test="name(./*)='abbr'and not(.//tei:term)"> <!--abbreviazioni-->
              <xsl:value-of select="concat(./tei:expan , ' ')"/>
           </xsl:if>
         <xsl:if test="name(./*)='sic' and not(.//tei:term)"> <!--errori-->
                <xsl:value-of select="concat(./tei:corr , ' ')"/>
		</xsl:if>
	  </xsl:when>

	  <xsl:when test="name()='del'">
		<xsl:choose>
		<xsl:when test="name(./*)='gap' ">
			<del> unreadable </del>
		</xsl:when>
		<xsl:otherwise>
		   <del><xsl:value-of select="concat(. , ' ')"/></del>
	    </xsl:otherwise>
	   </xsl:choose>
	  </xsl:when>

	  <xsl:when test="name()='phr'">		<!--a capo-->
	  <del>
			<xsl:value-of select="concat(. , ' ')"/>
		</del>
	</xsl:when> 

	<xsl:when test="name()='pc'"> <!--termini-->
	<xsl:choose>
		<xsl:when test="name(..)='add' or name(../..)='choice'">
		</xsl:when>
		<xsl:otherwise>
		<xsl:value-of select="concat(.,' ')"/>
		</xsl:otherwise>
		</xsl:choose>
	</xsl:when>

	<xsl:when test="name()='w'"> <!--termini-->
			<xsl:value-of select="concat(. , ' ')"/> 
	</xsl:when>				                    
		</xsl:choose>
  </xsl:for-each>
</xsl:template>


<xsl:template match="//tei:div[@xml:id='Testo_pg20']" mode="testo">
	<xsl:call-template name="formattazioneTesto"/> 
</xsl:template>



    <xsl:attribute-set name="aCapo">
        <xsl:attribute name="id"><xsl:value-of select="./@facs"/></xsl:attribute>
    </xsl:attribute-set>


	 


<xsl:attribute-set name="TermineSottolineatoAggiunto">
<xsl:attribute name="class">termSottoAdd</xsl:attribute>
<xsl:attribute name="href">
	<xsl:value-of select="./@place"/>
</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>
