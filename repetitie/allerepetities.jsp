<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="../header.jsp">
	<jsp:param name="page" value="kalender" />
</jsp:include>
        
<div id="templatemo_right_column">
<div style="height:800px;overflow:auto;">
			<table >
			 <c:if test="${login == 'admin'}">
				<th style="min-width:50px;">delete</th>
				<th style="min-width:50px;">aanpassen</th>
			 </c:if>
				<th style="min-width:100px;">titel</th>
				<th style="min-width:100px;">datum</th>
				<th style="min-width:150px;">opmerkingen</th>
				<c:forEach var="i" items="${lijst}">
				 <tr>
				 <c:if test="${login == 'admin'}">
				 	 <td><a href="../controller?action=deleterepetitie&repid=${i.repid}" >delete</a></li></td>
				 	 <td><a href="../controller?action=alterrep&repid=${i.repid}" >aanpassen</a></li></td>
				 </c:if>  </a>
				 	<td> <a href="../controller?action=showrep&repid=${i.repid}" > ${i.titel} </a></td>
				 	<td>${i.datum}</td>
				 	<td>${i.opmerkingen}</td>
				 	
				 </tr>
				</c:forEach>
			</table>
			</div>



</div>
<%@include file="../footer.jsp" %>