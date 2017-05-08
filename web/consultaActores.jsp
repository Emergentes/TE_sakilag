<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <sql:query var="result" dataSource="jdbc/sakilag">
        SELECT * FROM actor where first_name like ?
        <sql:param value="${param.letra}%" />
    </sql:query>
        <h1>Listado de actores</h1>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
            </tr>
            <c:forEach var="item" items="${result.rows}">
                <tr>
                    <td>${item.first_name}</td>
                    <td>${item.last_name}</td>
                </tr>
            </c:forEach>
        </table>
                
    </body>
</html>