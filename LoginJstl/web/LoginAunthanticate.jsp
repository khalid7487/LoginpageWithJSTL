<%-- 
    Document   : LoginAunthanticate
    Created on : 11-Sep-2019, 20:09:38
    Author     : KHALID
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "s" uri = "http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authenticate Page</title>
    </head>
    <body>
        <c:if test="${empty param.username or empty param.password}">
            <c:redirect url="index.jsp">
                <c:param name="errMsg" value="Please Enter UserName and Password"/>
            </c:redirect>
    </c:if>
        <c:if test="${not empty param.username and not empty param.password}">
            <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://localhost:3306/loginjdbc"
                             user="root" password="7487"/>
        </c:if>
        <s:query dataSource="${ds}" var="rs">
            select count(*) as kount from user
            where user='${param.username}' and password='${param.password}'
        </s:query>
            <c:forEach items="${rs.rows}" var="r">
                <c:choose>
                    <c:when test="${r.kount gt 0}">
                        <c:set scope="session" var="loginUser" value="${param.username}"/>
                        <c:redirect url="Welcome.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="index.jsp">
                            <c:param name="errMsg" value="Username/password does not match"/> 
                        </c:redirect>
                    </c:otherwise>
                </c:choose>
        </c:forEach>
    </body>
</html>
