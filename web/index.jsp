<%-- 
    Document   : index
    Created on : 5/12/2014, 03:56:47 PM
    Author     : Toni
--%>

<%-- Importaciones que son necesarias para que se muestre el JSP --%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*" %>
<%@page import="java.util.*" %>

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
            <a href="registrarCategoria.jsp">Registrar Producto</a> |
        </div>
        <br >
        <div>
            <table border="1">
                <tr style="background-color: chocolate">
                    <td colspan="4">Lista de Categorias</td>

                </tr>
                <tr style="background-color: chocolate">
                    <td>Codigo</td>
                    <td>Nombre</td>
                    <td>Proceso</td>
                    <td>Proceso</td>
                </tr>
                <%-- Lista de todos los productos --%>
                <%
                            ArrayList<CategoriaArticulo> lista = CategoriaDB.obtenerCategoria();
                            for (CategoriaArticulo categoria : lista) {
                %>
                <tr>
                    <td><%= categoria.getId()%></td>
                    <td><%= categoria.getNombre()%></td>
                    <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>
                    <td><a href="actualizarCategoria.jsp?id=<%= categoria.getId()%>">Modificar</a>
                    </td>
                    <td><a href="eliminarCategoria.jsp?id=<%= categoria.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <%
                            }
                %>

            </table>
        </div>
        <br >
        <div>
        </div>


    </body>
</html>

