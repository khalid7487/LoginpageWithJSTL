<%-- 
    Document   : Welcome
    Created on : 11-Sep-2019, 20:05:18
    Author     : KHALID
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <p>
            <h1>Hello <c:out value="  ${sessionScope.loginUser}"></c:out></h1>
        </p> 
        <a href="logout.jsp">Logout</a>
        
        
    </body>
</html>
