<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbConnection.jsp"%>
<html>
<head>
    <title>Execute Delete</title>
</head>
<body>

<%
    String movieId = request.getParameter("movieId");
%>

<c:set var="id" value="<%=movieId%>"/>
<sql:update var="count" dataSource="${db}">
    DELETE from movies where movieId = ?;
    <sql:param value="${id}"/>

</sql:update>
<a href="./index.jsp">Home</a>

</body>
</html>
