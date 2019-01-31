<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="header.jsp">
	<jsp:param name="page" value="repertoire" />
</jsp:include>
        
<div id="templatemo_right_column">
    
    <div id="repertoire_searchbox"> 
    	<form id="form2" name="findsong" method="post" action="controller?action=findsong"> 
	    	
	   			<label for="songtitel">titel :  </label>
	   			<input type="text" name="songtitel"  value="<c:out value='${param.songtitel}'/>" style="width:100px"/> 
	   		
	   		
	   			<label for="songcomponist">componist :  </label>
	   			<input type="text" name="songcomponist"  value="<c:out value='${param.songcomponist}' />" style="width:100px"/> 
	   		
	   			<label for="songnummer">nr :  </label>
	   			<input type="number" name="songnummer"  value="<c:out value='${param.songnummer}' />" style="width:30px"/> 
	   		
	   		  <input class="button" type="submit" name="Submit" value="search" />
    	</form>
    </div>

<div style="height:800px;overflow:auto;">
			<table >
				<th style="min-width:100px;">titel</th>
				<th style="min-width:100px;">componist</th>
				<th style="min-width:50px;">nr</th>
				<th style="min-width:50px;">arrangeur</th>
				<th style="min-width:50px;">code</th>
				<c:if test="${login == 'admin'}">
				<tr>
					<form id="form2" name="addsong" method="post" action="controller?action=addsong"> 
	   					<td>
	   					<input class="button" type="submit" name="Submit" value="addsong" />
	   					<input type="text" name="songtitel"  value="<c:out value='${param.songtitel}'/>" style="width:100px"/> </td>
	   					<td><input type="text" name="songcomponist"  value="<c:out value='${param.songcomponist}' />" style="width:100px"/> </td>
	   					<td><input type="number" name="songnummer"  value="<c:out value='${param.songnummer}' />" style="width:30px"/> </td>
	   		  			<td><input type="text" name="songarrangeur"  value="<c:out value='${param.songarrangeur}' />" style="width:30px"/> </td>
	   		  			<td><input type="text" name="songcode"  value="<c:out value='${param.songcode}' />" style="width:30px"/> </td>
	   		  			
					</form>
					</tr>
				</c:if>
				<c:forEach var="i" items="${lijst}">
				 <tr>
				 	<td><a href="../controller?action=viewlied&liedid=${i.liedid}" > ${i.titel}  </a></td>
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
<%@include file="footer.jsp" %>