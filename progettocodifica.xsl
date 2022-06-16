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
	
	<link rel="stylesheet" type="text/css" href="fogliodistile.css"></link>
	<script src="JS.js" type="text/JavaScript"></script>
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
		<main>
			<section id="first">
				<div class="inner">
				  <h1>Prolusioni di F.De Saussure </h1>
				  
				  <h3>Progetto di Codifica di Testi</h3>

				  <p class="frasi" id="intro"> Il manoscritto del linguista francese di Ferdinand de Saussure si compone di tre parti, ognuna delle quali denominata “Prolusione ginevrina”. 
					Il nome si riferisce alle lezioni relative al corso di “Phonétique du grec et du latin”, 
					tenutesi presso l’Università di Ginevra il 6, 10 e 13 novembre 1891, nel corso delle quali vennero presentati i temi delle Prolusioni.
					
					Il manoscritto venne poi acquisito dalla Biblioteca di Ginevra ed è ora consultabile all’indirizzo https://archives.bge-geneve.ch/ark:/17786/vtae78f994bf3242bef/dao/0/.
					
					Edizione francese di riferimento: Bouquet-Engler 2002: pp. 143-172
					Engler 1967-74: 3283-3285.
					
					Traduzione italiana basata sull’edizione Bouquet-Engler (2002), con note di commento parziale in E. Fadda 2006: pp. 85-121.
		
					Studi critici: AA.VV., 2009, «Sur Saussure à Genève en 1891», in Cahiers Ferdinand de Saussure 67, pp. 217-312.
					</p>

				</div>
				  
			  
			  <section id="section-2">
				<div class="titolo">
				  <h2>Pagina 19</h2>
			  </div>
			  <a id= "bottone" type="button" href="retro19.jpg" style="float: left; margin-right: -250px; margin-top: 30px; margin-left: 50px;"  >RETRO</a>
				  <img id= "foto" src="pagina19.jpg" width="150" height="150" 
				  style="float: left; margin-right: 40px; margin-bottom: 15px; margin-top: 135px; margin-left: 50px;"/> 
				  
				
					  <div class="storia" id="storia3">
						  <p class="frasi" id="line">Serrons maintenant d'un peu plus près, Messieurs, ce qui est contenu dans ce mot et dans cette vue 
						  de Histoire appliquée à la langue. Presque immédiatement se présentera la nécessité de classer nos idées sous deux chefs.
						  La langue se différencie dans le temps, et en même temps elle se différencie ou se diversifie dans l'espace.
						  Une langue prise à deux dates différentes n'est pas identique à elle-même. Prise sur deux points plus ou moins distants de son 
						  territoire, elle n'est pas non plus identique à elle-même. Les deux choses, lorsqu'on veut avoir une vue exacte des événements, 
						  doivent toujours être considérées à la fois et de front. Mais nous sommes bien obligés de les séparer en théorie pour procéder avec ordre.
						  Je considérerai donc uniquement pour aujourd'hui la marche de la langue dans le temps, en supposant que nous n'ayons nullement à nous 
						  préoccuper du facteur de la distance géographique.
						  Même il ne me sera possible d'aborder dans cette séance que le premier point principal à poser; c'est le principe de la continuité dans 
						  le temps; dans notre séance de mardi nous aurons à examiner le principe qui en est la contrepartie, celui de la transformation dans le temps. </p>
						 
						  
						
						  <div class="mostraTraduzione">
						  <label for="traduzione_pg19">
						  <input class="showbutton" id ="tradizione_pg19" type="button" value="Mostra" onclick="this.value=this.value=='Mostra'?'Nascondi':'Mostra';"/>
						  </label>	
						</div>
						  <div class="nascondi"></div>
				  
						  <div class="traduzione_pg19" style="overflow-y: scroll; width:950px; height:100px; float: right">
						  <h3>TRADUZIONE</h3>
						  <p class="frasi" id="line"> 
						  Stringiamo ora un po’ più vicino, Signori, ciò che è contenuto in questa parola e in questa visione della Storia applicata alla lingua. 
						  Quasi subito si presenterà la necessità di classificare le nostre idee sotto due polarità.
						  La lingua si differenzia nel tempo, e allo stesso tempo si differenzia o si diversifica nello spazio. Una lingua presa in due date differenti 
						  non è identica a se stessa. Presa in due punti più o meno distanti del suo territorio,
						  nemmeno in tal caso è identica a se stessa. Le due cose, se si voglia avere una visione esatta dei fatti, vanno considerate insieme e frontalmente.
						  Ma noi siamo obbligati a separarle nella teoria per procedere con ordine.
						  Dunque, per oggi, considererò unicamente il cammino della lingua nel tempo, supponendo che non abbiamo da preoccuparci in nessun modo del fattore della 
						  distanza geografica.
						  Anzi, non mi sarà possibile abbordare in questa seduta che il primo punto principale da porre; è il principio della continuità nel tempo; nella nostra seduta 
						  di martedì dovremo esaminare il principio che ne è la contropartita, quello della trasformazione nel tempo.</p></div>
					  </div>
						  </div>
			  </section>
			</main>
			<section id="section-3">
				<div class="titolo">
				  <h2>Pagina 20</h2>
				 </div>
				 <a id= "bottone" type="button" href="retro20.jpeg" style="float: left; margin-right: -250px; margin-top: 30px; margin-left: 50px;">RETRO</a>
				 <img id= "foto" src="pagina20.jpg" width="150" height="150" 
				  style="float: left; margin-right: 40px; margin-bottom: 15px; margin-top: 135px; margin-left: 50px;" /> 
				  
				
					  <div class="storia" id="storia3">
						  <p class="frasi" id="line";> 
						  Puis, de même, nous considérerons ce qu'on peut dire du principe de la continuité dans l'espace et de celui de la divergence dans l'espace.				
						  Après cet exposé qui aura l'avantage de nous placer sur un terrain parfaitement net pour l'étude des faits particuliers, nous aborderons avec 
						  plus de sûreté le sujet spécial de la phonétique du grec et du latin où les occasions d'appliquer ces principes généraux se présentent sans cesse.
						  </p>	
					  <input class="showbutton" type="button" value="Mostra" onclick="this.value=this.value=='Mostra'?'Nascondi':'Mostra';">
						  <div class="nascondi"><div>
						  <h3>TRADUZIONE</h3>
						  <div style="overflow-y: scroll; width:950px; height:100px">
						  <p class="frasi"id="line"> 
						  Poi, allo stesso modo, considereremo ciò che si può dire del principio della continuità nello spazio e quello della divergenza nello spazio. 
						  Dopo tale esposizione che avrà il vantaggio di porci su un terreno perfettamente sgombro per lo studio dei fatti particolari, abborderemo con 
						  più sicurezza l’argomento speciale della fonetica del greco e del latino, in cui le occasioni di applicare tali principi generali si presentano di continuo.</p></div>
					 </div>
		  
			  </section>
	   <section id="section-4">
      <div class="titolo">
       <h2>Informazioni</h2>
      </div>
	
		

	
</body>
  </html>
  
	</xsl:template>


</xsl:stylesheet>
