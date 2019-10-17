<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abl
  Date: 14.10.2019
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Rejestracja</title>
</head>
<body>
<header>
    <jsp:include page="fragments/header.jsp"/>
</header>


<form action="/login" method="post">
    Username: <input type="text" name="username" value="Username"></br>
    Password: <input type="password" name="password" value="Password"></br>
    First name: <input type="text" name="firstName" value="First name"></br>
    Last name: <input type="text" name="lastName" value="Last name"></br>
    <input type="submit" value="Zarejestruj"></br>


    <c:if test="${error != null}">
    <p>${error}</p>
    </c:if>

</form>
<footer>
    <jsp:include page="fragments/footer.jsp"/>
</footer>
</body>
</html>
