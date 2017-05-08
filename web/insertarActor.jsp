<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:update var="result" dataSource="jdbc/sakilag">
            INSERT INTO actor (first_name, last_name)
            VALUES (?, ?)
            <sql:param value="${param.nombre}" />
            <sql:param value="${param.apellido}" />
        </sql:update>
        <p>Actor: ${param.nombre} ${param.apellido} insertado </p>
    </body>
</html>
