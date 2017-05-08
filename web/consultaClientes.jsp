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
        <h1>Listado de clientes</h1>
        <sql:query var="filas" dataSource="jdbc/sakilag">
            SELECT first_name, last_name, email FROM customer
        </sql:query>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Correo</th>
            </tr>
            
            <c:forEach var="item" items="${filas.rows}">
                <tr>
                    <td>${item.first_name}</td>
                    <td>${item.last_name}</td>
                    <td>${item.email}</td>
                </tr>
            </c:forEach> 
        </table>   
    </body>
</html>
