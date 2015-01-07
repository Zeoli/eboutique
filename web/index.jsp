<%-- 
    Document   : index
    Created on : 5/12/2014, 03:56:47 PM
    Author     : Toni
--%>

<%-- Importaciones que son necesarias para que se muestre el JSP --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>
            <%-- Menu de opciones --%>
            <a href="index.jsp">Inicio</a> |
            <a href="principal.jsp">Pagina del usuario</a> |
            <a href="admin.jsp">Pagina del admin</a> |
            <input type="text" name="txtbusqueda " > <td><input type="submit" value="Buscar" name="btnBuscar" /></td>
        </div>

    </body>
</html>

