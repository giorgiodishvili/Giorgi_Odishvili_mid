<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbConnection.jsp"%>
<html>
<head>
    <title>Execute Update</title>
</head>
<body>

<%
    String movieId = request.getParameter("movieId");
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String releaseDate = request.getParameter("releaseDate");
    Double rating = Double.valueOf(request.getParameter("rating"));
    String description = request.getParameter("description");
%>

<c:set var="id" value="<%=movieId%>"/>
<c:set var="title" value="<%=title%>"/>
<c:set var="director" value="<%=director%>"/>
<c:set var="releaseDate" value="<%=releaseDate%>"/>
<c:set var="rating" value="<%=rating%>"/>
<c:set var="description" value="<%=description%>"/>
<sql:update var="count" dataSource="${db}">
    update movies set title = ?, director = ?, release_date = ?, rating = ?, description = ? where movieId = ?;
    <sql:param value="${title}"/>
    <sql:param value="${director}"/>
    <sql:param value="${releaseDate}"/>
    <sql:param value="${rating}"/>
    <sql:param value="${description}"/>
    <sql:param value="${id}"/>

</sql:update>
<a href="./index.jsp">Home</a>

</body>
</html>
