<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="../header.jsp">
	<jsp:param name="page" value="kalender" />
</jsp:include>
        
<div id="templatemo_right_column">

<h1>${repetitie.titel} ${repetitie.datum}</h1> <br>

<h3>${repetitie.opmerkingen}</h3>

      <h1>liederen in deze repetitie</h1>
      <div style="max-height:800px;overflow:auto;">
			<table >
				<th style="min-width:100px;">titel</th>
				<th style="min-width:100px;">componist</th>
				<th style="min-width:50px;">nr</th>
				<c:forEach var="k" items="${inrep}">
				 <tr>
					 <td> <a href="../controller?action=viewlied&liedid=${k.liedid}" >${k.titel} </a></td>
				 	<td>${k.componist}</td>
				 	<td>${k.nr}</td>
				 	<c:if test="${k.opname != null}">
				 		<td><audio controls preload="metadata" style=" width:300px;"> <source src="${k.opname}" type="audio/mpeg"> </audio> </td>
				 	</c:if>
				 	<c:if test="${k.opname == null}">
					 	<c:if test="${login == 'admin'}"> <td>
					 		<form id="form1" name="addopname" method="post" action="../controller?action=addopnametorep&repid=${repetitie.repid}&liedid=${k.liedid}">
								<input type="text" id="search_text" name="addopname"
        						required value="<c:out value='${param.addopname}' />"/> 
        						<input class="button" type="submit" name="Submit" value="voeg opname toe" />
        					</form> </td>
				 		</c:if>
				 	</c:if>
				 </tr>
				</c:forEach>
			</table>
			</div>
</div>
<%@include file="../footer.jsp" %>