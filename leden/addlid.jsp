<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<jsp:include page="../header.jsp">
    <jsp:param name="page" value="" />
</jsp:include>
<div style="margin-top: 25px; margin-right:20px;overflow:auto;">


    <form id="persinfoform" name="persinfoform" method="post" action="../controller?action=addlid">

        <p>
            <label for="voornaam">voornaam :  </label>
            <input type="text" name="voornaam" required value="<c:out value='${param.voornaam}' />"/>
        </p>
        <p>
            <label for="achternaam">achternaam :  </label>
            <input type="text"  name="achternaam" required value="<c:out value='${param.achternaam}' />"/>
        </p>
        <p>
            <label for="telefoon">telefoon nummer :  </label>
            <input type="text"  name="telefoon"  value="<c:out value='${param.telefoon}' />"/>
        </p>
        <p>
            <label for="gsm">gsm-nummer :  </label>
            <input type="text"  name="gsm"  value="<c:out value='${param.gsm}' />"/>
        </p>
        <p>
            <label for="email">email :  </label>
            <input type="email"  name="email"  value="<c:out value='${param.email}' />"/>
        </p>
        <p>
            <label for="geboortedatum">geboortedatum :  </label>
            <input type="date"  name="geboortedatum"  value='${param.geboortedatumstring}'/>
        </p>
        <p>
            <label for="aansluitdatum">aansluitdatum :  </label>
            <input type="date"  name="aansluitdatum"  value='${param.aansluitdatumdstring}'/>
        </p>
        <p>
            <label for="straat">straat :  </label>
            <input type="text"  name="straat"  value="<c:out value='${param.straat}' />"/>
        </p>
        <p>
            <label for="gemeente">gemeente :  </label>
            <input type="text"  name="gemeente"  value="<c:out value='${param.gemeente}' />"/>
        </p>
        <p>
            <label for="huisnummer">huisnummer :  </label>
            <input type="number"  name="huisnummer"  value="<c:out value='${param.huisnummer}' />"/>
        </p>
        <p>
            <label for="postcode">postcode :  </label>
            <input type="number"  name="postcode"  value="<c:out value='${param.postcode}' />"/>
        </p>
        <p>
            <label for="partij">partij :  </label></td>
        <td><select name="partij" value="<c:out value='${param.partij}'/>">
            <option value="SOP">sopraan</option>
            <option value="ALT">alt</option>
            <option value="TEN">tenor</option>
            <option value="BAS">bas</option>
        </select>
        </p>
        <p>
            <label for="nieuwpasword"> wachtwoord</label>
            <input type="password"  name="nieuwpasword" required value="<c:out value='${param.nieuwpasword}' />"/>
        </p>

        <input class="button" type="submit" name="Submit" value="change information" />
    </form>


</div>
<%@include file="../footer.jsp" %>