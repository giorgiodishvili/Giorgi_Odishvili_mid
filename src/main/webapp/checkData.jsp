<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Check Data</title>
</head>
<body>

<%
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String releaseDate = request.getParameter("releaseDate");
    Double rating = Double.valueOf(request.getParameter("rating"));
    String description = request.getParameter("description");
%>

<ul>
    <li><%=title%></li>
    <li><%=director%></li>
    <li><%=releaseDate%></li>
    <li><%=rating%></li>
    <li><%=description%></li>
</ul>

<a href="./saveRecord.jsp?title=<%=title%>&director=<%=director%>&releaseDate=<%=releaseDate%>&rating=<%=rating%>&description=<%=description%>">save</a>

</body>
</html>
