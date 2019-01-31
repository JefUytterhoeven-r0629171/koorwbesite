<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="header.jsp">
    <jsp:param name="page" value="" />
</jsp:include>

<div>
<h3>${lied.titel}    ${lied.liedid} </h3>


<c:if test="${login == 'admin'}">
    <div id="addoefenmatriaal">
        vul deze form in om oefenmatriaal toe te voegen.

        <table>
            <form id="addoefenmatriaalform" name="addoefenmatriaalform" method="post" action="controller?action=addoefenmatriaal">
                <tr>
                    <td><label for="naam">naam :  </label></td>
                    <td><input type="text" name="naam"  value="<c:out value='${param.naam}'/>" /> </td>
                </tr>
                <tr>
                    <td><label for="videolink">videolink :  </label></td>
                    <td><input type="text" name="videolink"   /> </td>
                </tr>
                <tr>
                    <td><label for="audiolink">audiolink :  </label></td>
                    <td><input type="text" name="audiolink"   /> </td>
                </tr>
                <tr>
                    <td><label for="partij">partij :  </label></td>
                    <td><select name="partij" value="<c:out value='${param.partij}'/>">
                        <option value="iedereen">iedereen</option>
                        <option value="sopraan">sopraan</option>
                        <option value="alt">alt</option>
                        <option value="tenor">tenor</option>
                        <option value="bas">bas</option>
                        <option value="mannen">mannen</option>
                        <option value="vrouwen">vrouwen</option>
                    </select></td>
                </tr>
                <tr>
                    <td><label for="beschrijving">beschrijving :  </label></td>
                    <td><input type="text" name="beschrijving"  value="<c:out value='${param.beschrijving}'/>" /> </td>
                </tr>
                <input type="hidden" id="liedid" name="liedid" value="${lied.liedid}">
                <tr>
                    <td><input class="button" type="submit" name="Submit" value="voeg toe" /></td>
                </tr>

            </form>
        </table>

    </div>
</c:if>

    <br>
    <br>
<h3> opnames tabel</h3>

    <table>
        <th>naam</th>
        <th>partij</th>
        <th>luistervoorbeeld</th>
        <th>beschrijving</th>
<c:forEach var="i" items="${lijst}">
    <c:if test="${i.audiolink != null}">
    <tr>
        <td>${i.naam}</td>
        <td>${i.partij}</td>
        <td><audio controls preload="metadata" style=" width:200px;"> <source src="${i.audiolink}" type="audio/mpeg"> </audio> </td>
    <td> ${i.beschrijving}</td>
    </tr>
    </c:if>
    </c:forEach>
    </table>

    <br><br>

<h3> video tabel</h3>
    <table>
        <th>naam</th>
        <th>partij</th>
        <th>luistervoorbeeld</th>
        <th>beschrijving</th>
        <c:forEach var="i" items="${lijst}">
            <c:if test="${i.videolink != null}">
                <tr>
                    <td>${i.naam}</td>
                    <td>${i.partij}</td>
                    <td><iframe width="300" height="225"
                                src="${i.videolink}"
                                frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                    </iframe></td>
                    <td> ${i.beschrijving}</td>
                </tr>
            </c:if>
        </c:forEach>
    </table>


</div>
<%@include file="footer.jsp" %>