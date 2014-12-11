<%-- 
    Document   : registrarArticulo
    Created on : Dec 8, 2014, 10:21:33 AM
    Author     : Lety
--%>

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
            <a href="index.jsp">Inicio</a>
        </div>
        <br >
        <%-- En el action del formulario le decimos que llama al Controlador --%>
        <form method="post" action="ControladorArticulo">
            <div>
                <input type="hidden" name="accion" value="RegistrarArticulo" />
                <table border="1">
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="txtNombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Descripcion</td>
                        <td><input type="text" name="txtDescripcion" value="" /></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" name="txtPrecio" value="" /></td>
                    </tr>
                    <tr>
                        <td>Categoria</td>
                        <td><input type="text" name="txtCategoria" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Registrar" name="btnRegistrar" /></td>
                    </tr>
                </table>
            </div>
        </form>

    </body>
</html>


