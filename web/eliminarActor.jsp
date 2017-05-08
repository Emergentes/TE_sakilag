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
            DELETE FROM actor
            WHERE actor_id = ?
            <sql:param value="${param.id}" />
        </sql:update>
        <p>El registro fue eliminado</p>
    </body>
</html>
