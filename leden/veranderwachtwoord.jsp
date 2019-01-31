<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="../header.jsp">
	<jsp:param name="page" value="none" />
</jsp:include>
        
<div id="templatemo_right_column">

<form id="form1" name="changepas" method="post" action="../controller?action=changepas">               
		
       <p><label for="oudpasword">oud wachtwoord</label><input type="password" id="search_text" name="oudpasword"
        				required value="<c:out value='${param.pasword}' />"/> </p>  
        				   
         <p><label for="nieuwpasword">nieuw wachtwoord</label><input type="password" id="search_text" name="nieuwpasword"
        				required value="<c:out value='${param.nieuwpasword}' />"/> </p>   
        				
        <p><label for="nieuwpasword2">nieuw wachtwoord</label><input type="password" id="search_text" name="nieuwpasword2"
        				required value="<c:out value='${param.nieuwpasword2}' />"/> </p>   
        				
 		<input class="button" type="submit" name="Submit" value="change pass" />
 		
	</form>
	

	</div>
<%@include file="../footer.jsp" %>