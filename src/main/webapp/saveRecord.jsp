<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ugug
  Date: 28.10.23
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="dbConnection.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String releaseDate = request.getParameter("releaseDate");
    Double rating = Double.valueOf(request.getParameter("rating"));
    String description = request.getParameter("description");
%>

<c:set var="title" value="<%=title%>"/>
<c:set var="director" value="<%=director%>"/>
<c:set var="releaseDate" value="<%=releaseDate%>"/>
<c:set var="rating" value="<%=rating%>"/>
<c:set var="description" value="<%=description%>"/>
<sql:update var="count" dataSource="${db}">
    insert into movies(title, director, release_date, rating, description) values (?, ?, ?, ?, ?);
    <sql:param value="${title}"/>
    <sql:param value="${director}"/>
    <sql:param value="${releaseDate}"/>
    <sql:param value="${rating}"/>
    <sql:param value="${description}"/>
</sql:update>

<a href="./index.jsp">Home</a>

</body>
</html>
