<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<jsp:include page="header.jsp">
	<jsp:param name="page" value="media" />
</jsp:include>
<div id="templatemo_right_column">
<p>changelog</p>


	<p>version 0.2.1 xx/xx/19</p>
	<ul>
		<li>leden kunnen nu hun eigen informatie zien en enkel voornaam achternaam email en functie van de andere leden</li>
		<li>leden kunnen nu hun eigen informatie aanpassen. voor het geval hier fouten in zitten</li>
		<li>een admin kan nu leden toevoegen.</li>
	</ul>

	<p>version 0.2.0 29/01/19</p>
	<ul>
		<li>added lied pagina. op deze pagina kunnen gebruikers de individuele opnames beluistere + video's van de noten bekijken</li>
		<li>fix database collom achternaam houdt nu de waarde van de achternamen en voornaam de voornamen</li>
		<li>fix login mensen kunnen terug met hun voornaam inloggen</li>
		<li>fix wachtwoord veranderen. mensen kunnen terug hun wachtwoord veranderen</li>
		<li>fix css. normaal zou de css nu ook bij de initiele loading moeten geladen worden.</li>
		<li>fix de zoekfunctie voor liederen te zoeken wanneer men deze wilt toevoegen aan een repetitie werkt terug.</li>
		<li>implemented admin system.</li>
	</ul>
<p>version 0.1.2 11/16/17</p>
<ul>
<li>leden kunnen nu hun eigen wachtwoord veranderen</li>
<li>er kan nu een opname gelinkt worden aan een liedje in een repetitie</li>
<li>een admin kan nu liederen toevoegen aan het repertoire</li>
<li>paypal donation knop toegevoegt</li>
<li>wat moet er veranderen en bug fixes geupdate (onderaan deze pagina)</li>
</ul>
<p>version 0.1.1 10/31/17</p>
<ul>
<li>het is nu mogelijk een repetitie aan te maken</li>
<li>het is nu ook mogelijk liederen toe te voegen aan deze repetitie</li>
<li>liederen kunnen uit deze repetitie ook verwijdert worden</li>
<li>repetities kunnen aangepast worden</li>
<li>leden kunnen repetities bekijken</li>
<li>changelog pagina is toegevoegd in het admin secion</li>
</ul>
<p>version 0.1 10/28/1</p>
<p>index pagina&nbsp;</p>
<ul>
<li>de facebook feed word hier nu onderaan getoond</li>
</ul>
<div>
<p>over ons</p>
<ul>
<li>alle namen worden volgend stemgroep getoont</li>
</ul>
<div>kalender</div>
</div>
<div>
<ul>
<li>de google agenda word hier getoont</li>
</ul>
</div>
<div>repertoire</div>
<ul>
<li>repertoire word getoont vanuit de database</li>
<li>repertoire kan worden gefiltert op naam componist en nummer.&nbsp;(niet hoofdletergevoelig)</li>
</ul>
<p>&nbsp;media</p>
<ul>
<li>nog niks aan gedaan</li>
</ul>
<div>contact us</div>
<div>
<ul>
<li>formulier is opgesteld maar werkt nog niet .&nbsp;</li>
</ul>
</div>
<div>loign</div>
<div>
<ul>
<li>er kan worden ingelogd door gebruik te maken van voornaam (bv jef) en als wachtwoord heeft iedereen voorlopig koor</li>
<li>wachtwoorden worden gehashed volgens het&nbsp;SHA-512 algoritme.</li>
<li>je blijft ingelogd tot je uitlogd</li>
<li>na login krijg je toegang tot de pagina ledenlijst.</li>
</ul>
<div>logout</div>
<div>
<ul>
<li>door op logout te klikken kan u uitloggen</li>
</ul>
</div>
</div>
<div>ledenlijst</div>
<div>
<ul>
<li>word gehaald uit de database&nbsp;</li>
<li>staan momenteel nog geen filters op</li>
</ul>
<p>changelog</p>
<ul>
<li>addes changelog page</li>
</ul>
<p>&nbsp;</p>
<p>wat moet er nog veranderen.</p>
<ul>
	<li>layout moet worden opgeschoond zodat alle informatie ordelijk zichtbaar is</li>
<li>administratoren moeten pagina's kunnen aanpassen zonder aan de code te komen (index pagina)</li>
	<li><strike>er moeten luistervoorbeelden kunnen gelinkt worden aan repetitie's (per lied). </strike></li>
<li>een pagina voor leden waar ze gemakkelijk de liederen dat nu geoefend worden kunnen oefenen (admin kan hier liederen toevoegen en verwijderen)</li>
	<li> <strike>liederen moeten geoefend kunnen worden (per stemgroep, per strofe ...) </strike></li>
	<li> <strike>er moeten luistervoorbeelden kunnen gelinkt worden aan een lied voor bv media en repertoire </strike></li>
<li>een webstore maken voor het kopen van cd's/liederen/kaarten</li>
<li>kalender duidelijker maken elke activiteit met datum tonen ipv een hele kalender (veel duidelijker)</li>
<li>een admin moet leden kunnen toevoegen verwijderen en aanpassen</li>
<li>een lid moet zijn eigen informatie kunnen aanpassen</li>
<li>een lid kan enkel zijn eigen informatie volledig zien en niet vertrouwelijke informatie van andere leden.</li>
<li>een admin moet een evenement(concert optreden , mis) kunnen aanmaken en daar liederen in toevoegen en wat extra informatie(datum, plaats, dresscode, naam , liederen)
<ul>
<li>deze word dan toegevoegd aan de agenda van het koor</li>
<li>leden kunnen in een lijst van evenementen 1 evenement kiezen om in detail te zien</li>
</ul>
</li>
<li>menu voor leden en admins opschonen.</li>
	<li> <strike>enkel admines mogen het admin menu nog zien </strike></li>
<li>footer opschonen</li>
<li>gastenboek achtig iets ??</li>
<li></li>
</ul>

<p>bug fixes die gedaan moeten worden</p>
<ul>
	<li>  <strike>je kan momenteel niet van elke pagina naar elke pagina somige paginas doen moeilijk (probleem met de folder structuur) </strike></li>
	<li><strike>de zoek lied functie op de pagina waarbij een lied moet worden toegevoegt aan een repetitie geeft geen liederen terug </strike></li>
<li>contact us pagina verstuurt geen mail</li>
<li>facebook preview is broken ?</li>
	<li> <strike>leden database moet gefixet worden.(voornamen bij voornamen en achternamen bij achternamen. pastoor en zekl corrigeren)</strike></li>
</ul>
</div>
<%@include file="footer.jsp" %>