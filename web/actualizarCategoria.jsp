<%-- 
    Document   : actualizarCategoria
    Created on : 5/12/2014, 06:37:25 PM
    Author     : Toni
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%-- Obtenemos el id o el codigo del producto que deseamos modificar o actualizar --%>
<%
    CategoriaArticulo categoria = CategoriaDB.obtenerCategoria(Integer.parseInt(request.getParameter("id")));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>
            <a href="index.jsp">Inicio</a>
        </div>
        <br >
        <%-- En el action del formulario le decimos que llama al Controlador --%>
        <form method="post" action="ControladorCategoriaArticulo">
            <div>
                <%-- Indica al controlador que vamos hacer una modificacion --%>
                <input type="hidden" name="accion" value="ModificarCategoria" />
                <table border="1">
                    <tr>
                        <td>Codigo</td>
                        <%-- Escribimos el codigo del producto a modificar --%>
                        <td><input type="text" name="txtCodigo" value="<%= categoria.getId()%>" readonly /></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <%-- Escribimos el nombre del producto a modificar --%>
                        <td><input type="text" name="txtNombre" value="<%= categoria.getNombre()%>" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Actualizar" name="btnActualizar" /></td>
                    </tr>
                </table>
            </div>
        </form>

    </body>
</html>

