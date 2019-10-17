<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abl
  Date: 13.10.2019
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div>
    <ul>
        <li>
            <c:url var="homePageURL" value="/user/skills"/>
            <a href="${homePageURL}">Strona główna</a>
        </li>
        <li>
            <c:url var="loginURL" value="/login"/>
            <a href="${loginURL}">Strona główna</a>
        </li>
        <li>
            <c:url var="logoutURL" value="/logout"/>
            <a href="${logoutURL}">Strona główna</a>
        </li>
        <li>
            <c:url var="userSkillsURL" value="/user/skills"/>
            <a href="${userSkillsURL}">Strona główna</a>
        </li>
        <li>
            <c:url var="userSourcesURL" value="/user/sources"/>
            <a href="${userSourcesURL}">Strona główna</a>
        </li>
        <li>
            <c:url var="userUnknownSources" value="/user/unknown-sources"/>
            <a href="${userUnknownSources}">Strona główna</a>
        </li>


    </ul>

</div>
