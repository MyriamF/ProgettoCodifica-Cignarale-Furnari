<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei ="http://www.tei-c.org/ns/1.0">


    <xsl:output method="html" encoding="UTF-8" indent="yes" />		

<xsl:template match="/">
  <html>
	<head>
    <title><xsl:value-of select="//tei:titleStmt/tei:title"/></title>
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
				<li><a href="#section-4">Note</a></li>
				<li><a href="#section-5">Informazioni</a></li>
			</ul>
			</nav>
		</header>
        
		<section id="first">
		<div class="inner">
			<xsl:apply-templates select="//tei:titleStmt"/>
	
			<br/>
			<br/>
			<br/>
    
			<p class="frasi" id="intro"><xsl:value-of select="//tei:msContents/tei:summary"/></p>
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

		  	<input class="showbutton" style="margin-left: -50px" type="button" value="Mostra" onclick="this.value=this.value=='Mostra'?'Nascondi':'Mostra';"/>
				<div class="nascondi">
					<div>
					<h3>TRADUZIONE</h3>
					<div style="overflow-y: scroll; width:1000px; height:160px">
					<p class="frasi" id="line"> 
						<xsl:value-of select="//tei:div[@xml:id='Traduzione_pg19']"/>
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
				    	<xsl:value-of select="//tei:div[@xml:id='Traduzione_pg20']"/>
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
		 <h2>Note</h2>
	  <div class="note19">
		 <xsl:apply-templates  select="//tei:div[@xml:id='note_pg19']" mode="templateNote"/>
	  </div>
</div>

	  
</section>
<p>
<br/>
<br/>
<br/>
<br/>
</p>

<section id="section-5">
	<div class="titolo">
	<h2>Parole Chiave</h2>
	  <div class ="glossario">
	 <xsl:apply-templates select="//tei:div[@xml:id='glossary']"/>
	 <br/>
	 
	 <xsl:apply-templates select="//tei:fileDesc"/>
   </div>
	</div>
</section>


	
		
	</body>
  </html>
</xsl:template>



  
<xsl:template match="//tei:titleStmt">  <!-- titolo e informazioni di codifia-->
    <h1><xsl:value-of select="./tei:title"/></h1>
	<br/>
	<h3>
	<xsl:for-each select="./tei:respStmt"><br/>
		<xsl:value-of select="concat(./tei:resp,' ')"/>
		<xsl:choose>
			<xsl:when test="count(./tei:name)=2">
				<xsl:value-of select="concat(./tei:name,', ',./tei:name[2])"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="./tei:name"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:for-each>
    </h3>
   <br/>
</xsl:template>

<xsl:template match="//tei:fileDesc">

        EDIZIONE DIGITALE <br/> 
		<xsl:for-each select="./tei:publicationStmt/node()">
			<xsl:value-of select="."/><br/>
		</xsl:for-each>
		<br/> 
		MANOSCRITTO ORIGINALE <br/> 
		<xsl:for-each select="./tei:sourceDesc/tei:listBibl/tei:msDesc/tei:msIdentifier/node()">
		    <xsl:value-of select="."/><br/>
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


	<!--Glossario -->
	<xsl:template match="//tei:div[@xml:id='glossary']" name="Glossario">
		<ul>
			<xsl:for-each select=".//tei:item">
				<li>
					<xsl:element name="term" use-attribute-sets="paroleChiave">
						<xsl:value-of select="./tei:term"/>
					</xsl:element>:
					<xsl:value-of select="./tei:gloss"/>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:attribute-set name="paroleChiave">
		<xsl:attribute name="id">
			<xsl:value-of select="./tei:term/@xml:id"/>
		</xsl:attribute>
	</xsl:attribute-set>




   <xsl:template match="tei:div[@xml:id='Testo_pg19']/tei:fw"> <!--Numero pagina 19-->
        <xsl:value-of select="."/>
    </xsl:template>
	
	<xsl:template match="tei:div[@xml:id='Testo_pg20']/tei:fw">		<!--Numero pagina 20-->
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
			

		<xsl:when test="name()='term'"> <!-- elementi terminologici -->
			<xsl:if test="name(..)='ab' and not(.//tei:unclear) and not(name(./*)='emph')">
            <span > <xsl:value-of select="concat(. , ' ')"/></span>
		    </xsl:if>
           <xsl:choose>
			 <xsl:when test="name(./*)='emph'"> <!-- elementi terminologici sottolineati -->
                 <u><xsl:value-of select="concat(. , ' ')"/></u>
		     </xsl:when>
			 <xsl:when test="name(..)='corr' and not(.//tei:add)">  <!-- term ?? una correzione -->
			  <u><xsl:element name="a" use-attribute-sets="termini">
			    <xsl:value-of select="concat(. , ' ')"/>
				</xsl:element></u>
			</xsl:when>
			 <xsl:when test="name(..)='expan' and not(.//tei:add)"> <!-- term ?? un'abbreviazione -->
			    <u><xsl:value-of select="concat(. , ' ')"/></u>     
			</xsl:when>
		   </xsl:choose>

		   <xsl:if test="./@xml:id='n1'">
                <a class="noteP" href="#section-4">N1</a> 
           </xsl:if>
		</xsl:when>

		<xsl:when test="name()='add'"> <!--aggiunte-->
		   <xsl:choose>
		      <xsl:when test="name(./*)='unclear'"> 
			  <!-- non aggiunge testo perch?? gi?? gestito dalla funzione 'unclear' -->             
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

	  <xsl:when test="name()='del'"> <!-- parole cancellate -->
		<xsl:choose>
		<xsl:when test="name(./*)='gap' ">
			<del> unreadable </del>
		</xsl:when>
		<xsl:otherwise>
		   <del><xsl:value-of select="concat(. , ' ')"/></del>
	    </xsl:otherwise>
	   </xsl:choose>
	  </xsl:when>

	<xsl:when test="name()='pc'"> <!--punteggiatura-->
	<xsl:choose>
		<xsl:when test="name(..)='add' or name(../..)='choice'">
		</xsl:when>
		<xsl:otherwise>
		<xsl:value-of select="concat(.,' ')"/>
		</xsl:otherwise>
		</xsl:choose>
	</xsl:when>

	<xsl:when test="name()='w'"> <!--parole singole-->
			<xsl:value-of select="concat(. , ' ')"/> 
	</xsl:when>	
	
	
		</xsl:choose>
  </xsl:for-each>
</xsl:template>

	<xsl:attribute-set name="termini">
		<xsl:attribute name="href">
			<xsl:value-of select="./@ref"/>
		</xsl:attribute>
	</xsl:attribute-set>


<xsl:template match="//tei:div[@xml:id='Testo_pg20']" mode="testo"> <!-- formattazione testo pg 20 -->
	<xsl:call-template name="formattazioneTesto"/> 
</xsl:template>

    <xsl:template match="//tei:div[@xml:id='note_pg19']" name="templateNote"> <!-- formattazione note -->
        <ul>
            <xsl:for-each select=".//tei:item">
                <li>
                    <xsl:element name="note" use-attribute-sets="noteP"><xsl:value-of select="./tei:note/@xml:id"/></xsl:element>: 
                    <xsl:value-of select="./tei:note"/>
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>

	<xsl:attribute-set name="noteP">
        <xsl:attribute name="id"><xsl:value-of select="./tei:note/@xml:id"/></xsl:attribute>
        <xsl:attribute name="class">note</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
