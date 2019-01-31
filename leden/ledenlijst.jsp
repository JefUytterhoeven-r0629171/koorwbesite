<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<jsp:include page="../header.jsp">
	<jsp:param name="page" value="" />
</jsp:include>
<div style="margin-top: 25px; margin-right:20px;overflow:auto;">

<c:forEach var="i" items="${lijst}">
	<c:if test="${voornaam  == i.voornaam && achternaam == i.achternaam}">

		<form id="persinfoform" name="persinfoform" method="post" action="../controller?action=changepersinfo">

			<p>
				<label for="voornaam">voornaam :  </label>
				<input type="text" name="voornaam" required value="<c:out value='${i.voornaam}' />"/>
			</p>
			<p>
				<label for="achternaam">achternaam :  </label>
				<input type="text"  name="achternaam" required value="<c:out value='${i.achternaam}' />"/>
			</p>
			<p>
				<label for="telefoon">telefoon nummer :  </label>
				<input type="text"  name="telefoon" required value="<c:out value='${i.telefoon}' />"/>
			</p>
			<p>
				<label for="gsm">gsm-nummer :  </label>
				<input type="text"  name="gsm" required value="<c:out value='${i.gsm}' />"/>
			</p>
			<p>
				<label for="email">email :  </label>
				<input type="email"  name="email" required value="<c:out value='${i.email}' />"/>
			</p>
			<p>
				<label for="geboortedatum">geboortedatum :  </label>
				<input type="date"  name="geboortedatum" required value='${i.geboortedatumstring}'/>
			</p>
			<p>
				<label for="aansluitdatum">aansluitdatum :  </label>
				<input type="date"  name="aansluitdatum" required value='${i.aansluitdatumdstring}'/>
			</p>
			<p>
				<label for="straat">straat :  </label>
				<input type="text"  name="straat" required value="<c:out value='${i.adres.straat}' />"/>
			</p>
			<p>
				<label for="gemeente">gemeente :  </label>
				<input type="text"  name="gemeente" required value="<c:out value='${i.adres.gemeente}' />"/>
			</p>
			<p>
				<label for="huisnummer">huisnummer :  </label>
				<input type="number"  name="huisnummer" required value="<c:out value='${i.adres.huisnummer}' />"/>
			</p>
			<p>
				<label for="postcode">postcode :  </label>
				<input type="number"  name="postcode" required value="<c:out value='${i.adres.postcode}' />"/>
			</p>
			<p>
				<label for="partij">partij :  </label>
				<input type="text"  name="partij" readonly required value="<c:out value='${i.fucntie}' />"/>
			</p>
			<input type="hidden" id="lidid" name="lidid" value="${i.lidid}">
			<input class="button" type="submit" name="Submit" value="change information" />
		</form>


	</c:if>
</c:forEach>


<table>
	<th>fucntie</th>
	<th>achternaam</th>
	<th>voornaam</th>
	<th>email</th>
	<c:forEach var="i" items="${lijst}">
	 <tr>
	 	<td>${i.fucntie}</td>
	 	<td>${i.achternaam}</td>
	 	<td>${i.voornaam}</td>
	 	<td>${i.email}</td>
	 </tr>
	</c:forEach>
</table>
</div>
<%@include file="../footer.jsp" %>