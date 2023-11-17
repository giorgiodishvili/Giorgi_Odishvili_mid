<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="dbConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>List Movies</title>
</head>
<body>
<a href="./addRecord.jsp">Add student</a>

<sql:query var="movies" dataSource="${db}">
    select * from movies
</sql:query>

<table>
    <thead>
        <tr>
            <td>ID</td>
            <td>Title</td>
            <td>Director</td>
            <td>ReleaseDate</td>
            <td>Rating</td>
            <td>Description</td>
            <td>Action</td>
            <td>Action</td>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="movie" items="${movies.rows}">
        <tr>
            <td>${movie.movieId}</td>
            <td>${movie.title}</td>
            <td>${movie.director}</td>
            <td>${movie.release_date}</td>
            <td>${movie.rating}</td>
            <td>${movie.description}</td>
            <td><a href="./updateRecord.jsp?movieId=${movie.movieId}">Update</a></td>
            <td><a href="./deleteRecord.jsp?movieId=${movie.movieId}">Delete</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>