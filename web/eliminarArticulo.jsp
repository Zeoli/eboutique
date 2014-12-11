<%-- 
    Document   : eliminarArticulo
    Created on : Dec 8, 2014, 10:25:27 AM
    Author     : Lety
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%-- Obtenemos el id o el codigo del producto que deseamos modificar o actualizar --%>
<%
    Articulo articulo = ArticuloDB.obtenerArticuloId(Integer.parseInt(request.getParameter("id")));
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
        <form method="post" action="ControladorArticulo">
            <div>
                <%-- Indica al controlador que vamos hacer una modificacion --%>
                <input type="hidden" name="accion" value="EliminarArticulo" />
                <table border="1">
                    <tr>
                        <td>Codigo</td>
                        <%-- Escribimos el codigo del producto a modificar --%>
                        <td><input type="text" name="txtCodigo" value="<%= articulo.getId()%>" readonly /></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <%-- Escribimos el nombre del producto a modificar --%>
                        <td><input type="text" name="txtNombre" value="<%= articulo.getNombre()%>" readonly/></td>
                    </tr>
                    
                    <tr>
                        <td>Descripcion</td>
                        <%-- Escribimos la descripcion del producto a modificar --%>
                        <td><input type="text" name="txtDescripcion" value="<%= articulo.getDescripcion()%>" readonly/></td>
                    </tr>
                    
                    <tr>
                        <td>Precio</td>
                        <%-- Escribimos el precio del producto a modificar --%>
                        <td><input type="text" name="txtPrecio" value="<%= articulo.getPrecio()%>" readonly/></td>
                    </tr>
                    
                    <tr>
                        <td>Categoria</td>
                        <%-- Escribimos el nombre del producto a modificar --%>
                        <td><input type="text" name="txtIdCategoria" value="<%= articulo.getCategoria()%>" readonly/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Eliminar" name="btnActualizar" /></td>
                    </tr>
                </table>
            </div>
        </form>

    </body>
</html>


