<%-- 
    Document   : index
    Created on : 11-Sep-2019, 13:30:27
    Author     : KHALID
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login to our application</title>
    </head>
    <body>
        <h1>Please Login</h1>
        <form action="LoginAunthanticate.jsp">
            Username:<input type="text" name="username"/><br/>
            Password:<input type="text" name="password"/><br/>
            <input type="submit" value="Login"/>
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
        </c:if>
    </body>
</html>
