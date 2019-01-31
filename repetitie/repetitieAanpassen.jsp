<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="../header.jsp">
	<jsp:param name="page" value="" />
</jsp:include>
        
<div id="templatemo_right_column">

<h1>vul onderstaande velden in om een nieuwe repetitie te maken</h1>

	<form id="form2" name="addrep" method="post" action="../controller?action=updaterepinfo">         
	      
   		<p>
   			<label for="repnaam">naam nieuwe repetitie:  </label>
   			<input type="text" name="repnaam" required value="<c:out value='${repetitie.titel}' />"/> 
   		</p> <br>
   		<p>
   			<label for="repdate">datum nieuwe repetite :  </label>
   			<input type="date"  name="repdate" required value="<c:out value='${repetitie.datum}' />"/> 
   		</p> 
   		<p>
   			<label for="repinfo">informatie voor de  nieuwe repetitie:  </label>
   			<textarea rows="4" cols="50" name="repinfo" >
				${repetitie.opmerkingen}
			</textarea>
   		</p> 
   		<p>
   			<label for="repzichtbaar">indien de repetitie nog niet zichtbaar mag zijn --> ?:  </label>
   			<input type="checkbox" name="repzichtbaar" value="<c:out value='false' />"/> 
   		</p> 
   		
         <input class="button" type="submit" name="Submit" value="update repetitie" />
     </form>


    <br>
      <h1>liederen in deze repetitie</h1>
      <div style="max-height:800px;overflow:auto;">
			<table >
				<th style="min-width:50px;">verwijderen uit repetitie</th>
				<th style="min-width:100px;">titel</th>
				<th style="min-width:100px;">componist</th>
				<th style="min-width:50px;">nr</th>
				<th style="min-width:50px;">arrangeur</th>
				<th style="min-width:50px;">code</th>
				<c:forEach var="k" items="${inrep}">
				 <tr>
				 	<td><a href="../controller?action=verwijdersonguitrep&liedid=${k.liedid}&repid=${repetitie.repid}" >verwijderen</a></td>
				 	<td>${k.titel}</td>
				 	<td>${k.componist}</td>
				 	<td>${k.nr}</td>
				 	<td>${k.arrangeur}</td>
				 	<td>${k.code}</td>
				 </tr>
				</c:forEach>
			</table>
			</div>
    <br>
    <h1>alle liederen</h1>
    
        <div id="repertoire_searchbox"> 
    	<form id="form2" name="findsong" method="post" action="../controller?action=findsongrepetitie&repid=${repetitie.repid}">
	    	
	   			<label for="songtitel">titel :  </label>
	   			<input type="text" name="songtitel"  value="<c:out value='${param.songtitel}'/>" style="width:100px"/> 
	   		
	   		
	   			<label for="songcomponist">componist :  </label>
	   			<input type="text" name="songcomponist"  value="<c:out value='${param.songcomponist}' />" style="width:100px"/> 
	   		
	   			<label for="songnummer">nr :  </label>
	   			<input type="number" name="songnummer"  value="<c:out value='${param.songnummer}' />" style="width:30px"/> 
	   		
	   		  <input class="button" type="submit" name="Submit" value="search" />
    	</form>
    </div>
		<div style="max-height:800px;overflow:auto;">
			<table >
				<th style="min-width:50px;">toevoegen aan repetitie</th>
				<th style="min-width:100px;">titel</th>
				<th style="min-width:100px;">componist</th>
				<th style="min-width:50px;">nr</th>
				<th style="min-width:50px;">arrangeur</th>
				<th style="min-width:50px;">code</th>
				<c:forEach var="i" items="${lijst}">
				 <tr>
				 	<td><a href="../controller?action=addsongtorep&liedid=${i.liedid}&repid=${repetitie.repid}" >toevoegen</a></td>
					 <td><a href="../controller?action=viewlied&liedid=${i.liedid}" >${i.titel} </a></td>
				 	<td>${i.componist}</td>
				 	<td>${i.nr}</td>
				 	<td>${i.arrangeur}</td>
				 	<td>${i.code}</td>
				 </tr>
				</c:forEach>
			</table>
			</div>
		</div>
	</div>
<%@include file="../footer.jsp" %>