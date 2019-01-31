<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<jsp:include page="header.jsp">
	<jsp:param name="page" value="overons" />
</jsp:include>
        
		<div id="templatemo_right_column">
       	<h1>WELKOM OP DE WEBSITE VAN HET 
SINT-CECILIAKOOR ROTSELAAR!</h1>
            <p class="text_area">Het Sint-Ceciliakoor is een gemengd koor voor alle leeftijden (jeugd tot senioren). Momenteel verenigen we een vijfentwintigtal actieve zangers in een koor vol met uitdagingen en diversiteit.
We zijn een koor van enthousiaste liefhebbers die in een gezellige en vriendschappelijke sfeer streven naar een kwalitatieve uitvoering. Ons repertoire bestaat uit religieuze muziek, klassieke en moderne meerstemmige koorstukken, aangevuld met pop- en musicalklassiekers.
Elke dinsdag repeteren we vanaf 20u in de kerk van Rotselaar-centrum.
Heb je interesse om ons te ontmoeten of ben je kandidaat zanger, kom gerust eens langs of contacteer ons op info@koorrotselaar.be.</p>
    <p class="text_area">Je kan ons ook terugvinden op Facebook. <a href="https://www.facebook.com/SintCecialia/">ga naar facebook</a>
    </p>        
    
    <table style="float:left; width:200px;">
	<th>sopranen</th>
	<c:forEach var="i" items="${sopranen}">
	 <tr>
	 	<td>${i.voornaam}</td>
		<td>${i.achternaam}</td>
	 </tr>
	</c:forEach>
	</table>
	<table style="float:left;width:200px;">
	<th>alten</th>
	<c:forEach var="i" items="${alten}">
	 <tr>
	 	<td>${i.voornaam}</td>
		<td>${i.achternaam}</td>
	 </tr>
	</c:forEach>
	</table>
	    <table style="float:left;width:200px;">
	<th>bassen</th>
	<c:forEach var="i" items="${bassen}">
	 <tr>
	 	<td>${i.voornaam}</td>
		<td>${i.achternaam}</td>
	 </tr>
	</c:forEach>
	</table>
	    <table style="float:left;height:200px;">
	<th>tenoren</th>
	<c:forEach var="i" items="${tenoren}">
	 <tr>
	 	<td>${i.voornaam}</td>
		<td>${i.achternaam}</td>
	 </tr>
	</c:forEach>
	</table>
		</div>
	</div>
<%@include file="footer.jsp" %>