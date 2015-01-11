<%-- 
    Document   : sales
    Created on : 1/01/2015, 07:44:15 PM
    Author     : Toni
--%>

<%@page import="Modelo.venta.ventaDB"%>
<%@page import="Modelo.venta.venta"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/categorias.css">
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <link rel="stylesheet" type="text/css" href="css/sales.css">
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
                                <span>Ventas</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="main-admin">
                    <table>
                        <th><span>Código</span> <hr id="row"> </th>
                        <th><span>Cliente</span> <hr id="row"> </th>
                        <th><span>Fecha</span> <hr id="row"> </th>
                        <th><span>Productos</span> <hr id="row"> </th>
                        <th><span>Precio</span> <hr id="row"> </th>
                        <th><span>Cantidad</span> <hr id="row"> </th>
                        <th><span>Total</span> <hr id="row"> </th>
                        <%
                          
                            ArrayList<venta> lista = ventaDB.obtenerVenta();
                            for (venta v : lista) {
                        %>
                        <tr>
                            <td><%= v.getId()%></td>
                            <td><%= v.getCliente() %></td>
                            <td><%= v.getFecha() %></td>
                            <td><%= v.getIdProducto() %></td>
                            <td><span id="mark-precio">$</span><%= v.getPrecio() %></td>
                            <td><%= v.getCantidad() %></td> 
                            <td><span id="mark-precio">$</span><%= v.getParcial() %></td>
                            <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>

                        </tr>
                        <%
                            }
                            ArrayList<venta> listaVent = ventaDB.obtenerVenta();
                            for (venta vnt : listaVent) {
                        %>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><hr id="row"><span>Total</span></td>
                            <td><hr id="row"><span id="mark-precio">$</span> <%= vnt.getTotalPagar() %> </td>
                        </tr>
                        <% } %>
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