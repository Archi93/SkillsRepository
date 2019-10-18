<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abl
  Date: 18.10.2019
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<header>
    <jsp:include page="fragments/header.jsp"></jsp:include>
</header>

<form action="/login" method="post">
    <p>
        Username: <input type="text" name="username" value="Username">
    </p>
    <p>
        Password: <input type="password" name="password" value="Password">
    </p>
    <p>
        <input type="submit" value="Log In">
    </p>
    <p>
        <c:if test="${error != null}">
    <p style="color: red">
            ${error}
    </p>
    </c:if>
    </p>

</form>

<footer>
    <jsp:include page="fragments/footer.jsp"></jsp:include>
</footer>

</body>
</html>

