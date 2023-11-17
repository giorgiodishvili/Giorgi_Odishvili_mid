<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: giorgiodishvili
  Date: 18.11.23
  Time: 01:56
  To change this template use File | Settings | File Templates.
--%>
<sql:setDataSource
        var="db"
        dataSource="jdbc:mysql://localhost:3306/giorgi_odishvili?allowPublicKeyRetrieval=true&useSSL=false&user=root&password=password"
        driver="com.mysql.jdbc.Driver"
        user="root"
        password="password"
/>
