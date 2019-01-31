<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="header.jsp">
	<jsp:param name="page" value="none" />
</jsp:include>
<div id="templatemo_right_column">
    <form name="addevent" method="post" action="../controller?action=addevent">
    	<p>
   			<label for="eventnaam">naam het nieuwe evenement:  </label>
   			<input type="text" name="eventnaam" required value="<c:out value='${param.evenementnaam}' />"/> 
   		</p>
       	<p>
   			<label for="eventzichtbaar">indien het event enkel voor koorleden is  </label>
   			<input type="checkbox" name="eventzichtbaar" value="<c:out value='${param.eventpubliek}' />"/> 
   		</p> 
    </form>

</div>
<%@include file="footer.jsp" %>