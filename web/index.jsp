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
            <a href="registrarCategoria.jsp">Registrar Categoria</a> |
            <a href="registrarArticulo.jsp">Registrar Articulo</a> |
            <a href="registrarStock.jsp">Registrar Stock</a> |
            <a href="registrarRol.jsp">Registrar Rol</a> |
            <a href="principal.jsp">Pagina del usuario</a> |
            <a href="admin.jsp">Pagina del admin</a> |
            <input type="text" name="txtbusqueda " > <td><input type="submit" value="Buscar" name="btnBuscar" /></td>
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
            <table border="1">
                <tr style="background-color: chocolate">
                    <td colspan="7">Lista de Articulos</td>

                </tr>
                <tr style="background-color: chocolate">
                    <td>Codigo</td>
                    <td>Nombre</td>
                    <td>Descripcion</td>
                    <td>Precio</td>
                    <td>Categoria</td>
                    <td>Proceso</td>
                    <td>Proceso</td>
                </tr>
                <%-- Lista de todos los articulos --%>
                <%
                          
                            ArrayList<Articulo> listaArticulo = ArticuloDB.obtenerArticulo();
                            for (Articulo articulo : listaArticulo) {
                %>
                <tr>
                    <td><%= articulo.getId()%></td>
                    <td><%= articulo.getNombre()%></td>
                    <td><%= articulo.getDescripcion()%></td>
                    <td><%= articulo.getPrecio()%></td>
                    <td><%= articulo.getCategoria()%></td>
                    <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>
                    <td><a href="actualizarArticulo.jsp?id=<%= articulo.getId()%>">Modificar</a>
                    </td>
                    <td><a href="eliminarArticulo.jsp?id=<%= articulo.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <%
                            }
                %>

            </table>
        </div>
                
                <br >
        <div>
            <table border="1">
                <tr style="background-color: chocolate">
                    <td colspan="7">Inventario</td>

                </tr>
                <tr style="background-color: chocolate">
                    <td>Codigo de articulo</td>
                    <td>Stock</td>
                    <td>Proceso</td>
                    <td>Proceso</td>
                </tr>
                <%-- Lista de todos los articulos --%>
                <%
                          
                            ArrayList<Stock> listaStock = StockDB.obtenerStock();
                            for (Stock stock: listaStock) {
                %>
                <tr>
                    <td><%= stock.getId()%></td>
                    <td><%= stock.getStock()%></td>
                   
                    <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>
                    <td><a href="actualizarStock.jsp?id=<%= stock.getId()%>">Modificar</a>
                    </td>
                    <td><a href="eliminarStock.jsp?id=<%= stock.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <%
                            }
                %>

            </table>
        </div>
        <br >
        <br >
        <div>
            <table border="1">
                <tr style="background-color: chocolate">
                    <td colspan="7">Detalles de venta</td>

                </tr>
                <tr style="background-color: chocolate">
                    <td>Folio</td>
                    <td>Producto</td>
                    <td>Cantidad</td>
                    <td>Proceso</td>
                </tr>
                <%-- Lista de todos los articulos --%>
                <%
                          
                            ArrayList<DetalleVenta> listaDetalle= DetalleVentaDB.obtenerDetalleVenta();
                            for (DetalleVenta detalleVenta: listaDetalle) {
                %>
                <tr>
                    <td><%= detalleVenta.getIdVenta()%></td>
                    <td><%= detalleVenta.getIdProducto()%></td>
                    <td><%= detalleVenta.getCantidad()%></td>
                   
                    <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>
                    <td><a href="eliminarStock.jsp?id=<%= detalleVenta.getIdVenta()%>">Eliminar</a>
                    </td>
                </tr>
                <%
                            }
                %>

            </table>
        </div>
        <br >
        
        <div>
            <table border="1">
                <tr style="background-color: chocolate">
                    <td colspan="4">Lista de Roles</td>

                </tr>
                <tr style="background-color: chocolate">
                    <td>Codigo</td>
                    <td>Nombre</td>
                    <td>Proceso</td>
                    <td>Proceso</td>
                </tr>
                <%-- Lista de todos los productos --%>
                <%
                            ArrayList<Rol> listaRol = RolDB.obtenerRol();
                            for (Rol rol : listaRol) {
                %>
                <tr>
                    <td><%= rol.getId()%></td>
                    <td><%= rol.getNombre()%></td>
                    <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>
                    <td><a href="actualizarRol.jsp?id=<%= rol.getId()%>">Modificar</a>
                    </td>
                    <td><a href="eliminarRol.jsp?id=<%= rol.getId()%>">Eliminar</a>
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

