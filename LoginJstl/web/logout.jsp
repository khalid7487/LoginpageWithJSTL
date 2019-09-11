<%-- 
    Document   : logout
    Created on : 11-Sep-2019, 21:42:52
    Author     : KHALID
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session.removeAttribute("loginUser");
        %>
        <c:remove scope="session" var="loginUser" />
        <a href="index.jsp">loging again</a>
        
    </body>
</html>
