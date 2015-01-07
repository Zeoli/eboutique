<%-- 
    Document   : articulos
    Created on : 1/01/2015, 11:35:56 PM
    Author     : Toni
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/categorias.css">
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <link rel="stylesheet" type="text/css" href="css/articulos.css">
        <title>Index</title>
    </head>
    <body>
        <div class="contenedor">
            <hr id="row">
            
                <!-- HEADER -->
            <div class="header">
                <hr id="internal-row">
                <div class="clear"></div>
                <div class="logo"></div>
                <div id="vertical"></div>
                <div class="menu-header-admin">
                    <div class="user">
                        <div class="bienvenida">
                            <a href="#">Bienvenido Administrador</a>
                        </div>
                    </div>
                    <div class="options">
                        <ul id="menu">
                            <li><a href="users.jsp">Usuarios</a></li>
                            <li><a href="category.jsp">Categorias</a></li>
                            <li><a href="articulos.jsp">Articulos</a></li>
                            <li><a href="sales.jsp">Ventas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            
            <div class="div-header"></div>
            
                <!-- CONTENIDO -->
            <div class="contenido">
                <div id="superior">
                    <div id="marco">
                        <div id="encabezado">
                            <p id="titulo">
                                <span>Articulos</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="main-admin">
                    <a href="registrarArticulo.jsp" id="agregar">Agregar Artículo</a>
                    <a href="#" id="agregar">Agregar Almacen</a>
                    <br />
                    <table>
                        <th>Código <hr id="row"></th>
                        <th>Imagen <hr id="row"></th>
                        <th>Nombre <hr id="row"></th>
                        <th>Descripcion <hr id="row"></th>
                        <th>Precio <hr id="row"></th>
                        <th>Categoria <hr id="row"></th>
                        <th>Opciones <hr id="row"></th>
                        
                        <%
                          
                            ArrayList<Articulo> listaArticulo = ArticuloDB.obtenerArticulo();
                            for (Articulo articulo : listaArticulo) {
                %>
                <tr>
                    <td><%= articulo.getId()%></td>
                   
                    <td><%= articulo.getNombre()%></td>
                    <td><%= articulo.getDescripcion()%></td>
                    <td><span id="mark-precio">$</span><%= articulo.getPrecio()%></td>
                    <td><%= articulo.getCategoria()%></td>
                    <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>
                    <td><a href="actualizarArticulo.jsp?id=<%= articulo.getId()%>"><img src="img/edit.png"></a>
                    <a href="eliminarArticulo.jsp?id=<%= articulo.getId()%>"><img src="img/delete.png"></a>
                    </td>
                </tr>
                <%
                            }
                %>
                       
                    </table>
                </div>
                <div id="division"></div>
                <!-- Contenido -->
            </div>
            
                <!-- FOOTER -->
            <div class="div-footer"></div>
            
            <div class="footer">
                <div class="sign"></div>
                <div id="vertical"></div>
            </div>
            <hr id="row">
            
            <hr id="internal-row">
            
            <div id="division"></div>
        </div>
    </body>
</html>
