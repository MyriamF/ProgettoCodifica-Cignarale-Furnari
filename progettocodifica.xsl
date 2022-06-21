<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei ="http://www.tei-c.org/ns/1.0">


    <xsl:output method="html" encoding="UTF-8" indent="yes" />		

<xsl:template match="/">
  <html>
	<head>
    <title>Prolusioni</title>
	<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of>
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
			<h1>Prolusioni di F. de Saussure</h1>
			<h3>Progetto di Codifica di Testi a cura di:<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp"></xsl:value-of></h3>
			<p class="frasi" id="intro"><xsl:value-of select="tei:teiHeader/tei:sourceDesc/tei:listaBibl/tei:msDesc/tei:msContents/tei:summary"></xsl:value-of></p>
        </div>
		</section>

	    <section id="section-2">
        <div class="titolo">
        <h2>Pagina 19</h2>
	   </div>
	
	   <a id= "bottone" type="button" href="retro19.jpg" style="float: left; margin-right: -250px; margin-top: 30px; margin-left: 50px;"  >RETRO</a>
		  <img id= "foto" src="pagina19.jpg" width="150" height="150" 
		   style="float: left; margin-right: 40px; margin-bottom: 15px; margin-top: 135px; margin-left: 50px;"/> 
	      </section>
	</body>
  </html>
</xsl:template>
  

        


</xsl:stylesheet>
