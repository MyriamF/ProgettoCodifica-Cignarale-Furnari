<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns = "http://www.w3.org/1999/xhtml"
	xmlns:html = "http://www.w3.org/1999/xhtml"
	xmlns:tei = "http://www.tei-c.org/ns/1.0"
	xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
>
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

		<div class="intro" id="first">
			<h1>Prolusioni di F. de Saussure</h1>
			<h3>Progetto di Codifica di Testi a cura di:</h3><xsl:value-of select="//tei:respStmt"></xsl:value-of>

		</div>
	
	</body>
  </html>
  
	</xsl:template>


</xsl:stylesheet>
