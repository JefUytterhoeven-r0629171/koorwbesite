
<jsp:include page="header.jsp">
	<jsp:param name="page" value="contactus" />
</jsp:include>
        
	<div id="templatemo_right_column">


<form action="mailto:jefuytterhoeven@hotmail.be" method="post" enctype="text/plain">
Name:<br>
<input type="text" name="name"><br>
E-mail:<br>
<input type="text" name="mail"><br>
Comment:<br>
<input type="text" name="comment" size="50"><br><br>
<input type="submit" value="Send">
<input type="reset" value="Reset">
</form>

   

	</div>
<%@include file="footer.jsp" %>