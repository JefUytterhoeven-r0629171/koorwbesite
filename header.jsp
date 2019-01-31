<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="icon" href="css/images/brieflogo.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>sint cecilia koor ${param.page}</title>
<meta name="keywords" content="music note, free template, website template, CSS, XHTML" />
<meta name="description" content="Music Note - free CSS template provided by templatemo.com" />
<c:url value="/" var="root" />
<link href="${root}css/templatemo_style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="templatemo_container_wrapper">
<div id="templatemo_container">

    <div id="templatemo_header">
		<div id="templatemo_site_title">sint <span>cecilia </span> koor</div>
        <div id="templatemo_site_slogan">rotselaar</div>
	</div>
    
	<div id="templatemo_menuleft"></div>    
	<div id="templatemo_menu">
		<ul>
			<li><a href="../index.jsp" <c:if test="${param.page == 'index' }">  class="current" </c:if>>Home</a></li>
   			<li><a href="../controller?action=overons" <c:if test="${param.page == 'overons' }">  class="current" </c:if>>over ons</a></li>
            <li><a href="../kalender.jsp" <c:if test="${param.page == 'kalender' }">  class="current" </c:if>>kalender</a></li>
            <li><a href="../controller?action=repertoire" <c:if test="${param.page == 'repertoire' }">  class="current" </c:if>>repertoire</a></li>
            <li><a href="../media.jsp" <c:if test="${param.page == 'media' }">  class="current" </c:if>>media</a></li>
            <li><a href="../contactus.jsp" <c:if test="${param.page == 'contactus' }">  class="current" </c:if>>contact us</a></li>

		</ul>
    </div>
    
    
	<div id="templatemo_content">
		<div id="templatemo_left_column">
		<c:choose>
		<c:when test="${login  == 'ja' || login == 'admin'}">
		
		<div class="templatemo_section2">
		welkom	${voornaam} ${achternaam} 
		<li><a href="../controller?action=ledenlijst" >ledenlijst</a></li>
		<li><a href="../controller?action=allerepetities" >repetities</a></li>
		<li><a href="../leden/veranderwachtwoord.jsp" >verander wachtwoord</a></li>
		 <c:if test="${login == 'admin'}">
			<div class="templatemo_section2">
				<li><a href="../repetitie/repetitiemaken.jsp" >repetitiemaken</a></li>
				<li><a href="../AdminAddSong.jsp" >lied toevoegen</a></li>
				<li><a href="../leden/addlid.jsp" >persoon toevoegen</a></li>
				<li><a href="../changelog.jsp" >website changelog</a></li>
			</div>
		</c:if>
		<form id="form1" name="uitloggen" method="post" action="controller?action=logout">               
     				<input class="button" type="submit" name="Submit" value="log out" />
        </form>
		</div>
		</c:when>
		<c:otherwise>
        	<div class="templatemo_section2">
            	<h1>inloggen</h1>
                <form id="form1" name="inloggen" method="post" action="../controller?action=login">
                    <p><label for="naam">naam </label><input type="text" id="search_text" name="naam"
         				required value="<c:out value='${param.naam}' />"/> </p> 
                	<p><label for="pasword">pasword</label><input type="password" id="search_text" name="pasword"
         				required value="<c:out value='${param.pasword}' />"/> </p>     
     				<input class="button" type="submit" name="Submit" value="log in" />
                </form>
            </div>
            </c:otherwise>
      
      </c:choose>
      <div  >
		<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank" >
		<input type="hidden" name="cmd" value="_s-xclick">
		<input type="hidden" name="hosted_button_id" value="JQ7ANA948LW22">
		<input type="image" src="https://www.paypalobjects.com/nl_NL/NL/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal, de veilige en complete manier van online betalen.">
		</form>
      </div>
			<div class="templatemo_section2">
			
            	<h1>Links</h1>
					<a href="https://www.facebook.com/SintCecialia/">facebook</a><br />
                    <a href="http://www.koorenstem.be/">koor en stem</a><br />
                    <a href="http://www.rotselaar.be/index.aspx?SGREF=2734">rotselaar</a><br />
                    <a href="https://www.uitinvlaanderen.be/">uit in vlaanderen</a><br />
            </div>
    		</div>