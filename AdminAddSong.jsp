<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<jsp:include page="header.jsp">
	<jsp:param name="page" value="none" />
</jsp:include>
<div id="templatemo_right_column">

<h1>vul onderstaande velden in om een lied aan de database toe te voegen</h1>

			<form id="form2" name="addsong" method="post" action="controller?action=addsong"> 
	   			<p>
	   				<label for="songtitel">titel van het lied:  </label>
	   				<input type="text" name="songtitel"  value="<c:out value='${param.songtitel}'/>"/>
	   			</p>
	   			<p>
	   			<label for="songcomponist">componist van het lied:  </label>
	   				<input type="text" name="songcomponist"  value="<c:out value='${param.songcomponist}' />"/> 
	   			</p>
	   			<p>
	   				<label for="songnummer">nummer van het lied:  </label>
	   				<input type="number" name="songnummer"  value="<c:out value='${param.songnummer}' />"/> 
	   			</p>
	   			<p>
	   				<label for="songarrangeur">arrangeur van het lied:  </label>
	   				<input type="text" name="songarrangeur"  value="<c:out value='${param.songarrangeur}' />"/>
	   			</p>
	   			<p>
	   				<label for="songcode">code van het lied:  </label>
	   				<input type="text" name="songcode"  value="<c:out value='${param.songcode}' />"/> 
	   			</p>
	   			
	   			
	   			<input class="button" type="submit" name="Submit" value="addsong" />
	   		</form>

</div>

<%@include file="../footer.jsp" %>