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
            UPDATE actor
            SET first_name = ?,
            last_name = ?
            WHERE actor_id = ?
            <sql:param value="${param.nombre}" />
            <sql:param value="${param.apellido}" />
            <sql:param value="${param.id}" />
        </sql:update>
        <p>El registro fue modificado</p>
    </body>
</html>
