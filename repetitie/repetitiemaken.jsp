<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="../header.jsp">
	<jsp:param name="page" value="none" />
</jsp:include>
        
<div id="templatemo_right_column">

<h1>vul onderstaande velden in om een nieuwe repetitie te maken</h1>

	<form id="form2" name="addrep" method="post" action="../controller?action=addrep">         
	      
   		<p>
   			<label for="repnaam">naam nieuwe repetitie:  </label>
   			<input type="text" name="repnaam" required value="<c:out value='${param.repnaam}' />"/> 
   		</p> <br>
   		<p>
   			<label for="repdate">datum nieuwe repetite :  </label>
   			<input type="date"  name="repdate" required value="<c:out value='${param.repdate}' />"/> 
   		</p> 
   		<p>
   			<label for="repinfo">informatie voor de  nieuwe repetitie:  </label>
   			<textarea rows="4" cols="50" name="repinfo" >
				${param.repinfo}
			</textarea>
   		</p> 
   		<p>
   			<label for="repzichtbaar">indien de repetitie nog niet zichtbaar mag zijn --> ?:  </label>
   			<input type="checkbox" name="repzichtbaar" value="<c:out value='false' />"/> 
   		</p> 
   		
         <input class="button" type="submit" name="Submit" value="voeg repetitie toe" />
     </form>

	</div>
<%@include file="../footer.jsp" %>