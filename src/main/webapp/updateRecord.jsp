<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="dbConnection.jsp" %>
<html>
<head>
    <title>Update Record</title>
</head>
<body>
<h1>Update Record</h1>
<% String movieId = request.getParameter("movieId"); %>
<c:set var="id" value="<%=movieId%>"/>
<sql:query var="movies" dataSource="${db}">
    select * from movies A where A.movieId = ?;
    <sql:param value="${id}" />
</sql:query>

<c:forEach var="movie" items="${movies.rows}" varStatus="loopStatus">
    <c:if test="${loopStatus.index == 0}">

        <form action="./executeUpdate.jsp?movieId=<%=movieId%>" method="post">
            Title: <input type="text" name="title" id="title" value='${movie.title}'/>
            Director: <input type="text" name="director" id="director" value='${movie.director}'/>
            ReleaseDate: <input type="date" name="releaseDate" id="releaseDate" value='${movie.release_date}'/>
            Rating: <input type="number" step="0.01" name="rating" id="Rating" value='${movie.rating}'/>
            Description: <input type="text" name="description"  id="description" value='${movie.description}'/>
            <input type="submit" value="submit">
        </form>

    </c:if>
</c:forEach>
</body>
</html>
