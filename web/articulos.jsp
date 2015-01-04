<%-- 
    Document   : articulos
    Created on : 1/01/2015, 11:35:56 PM
    Author     : Toni
--%>

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
                    <a href="#" id="agregar">Agregar Artículo</a>
                    <a href="#" id="agregar">Agregar Almacen</a>
                    <br />
                    <table>
                        <th>Código Artículo <hr id="row"></th>
                        <th>Nombre Artículo <hr id="row"></th>
                        <th>Precio <hr id="row"></th>
                        <th>Opciones <hr id="row"></th>
                        <tr>
                            <td>1</td>
                            <td>prenda</td>
                            <td><span id="mark-precio">$</span><span id="datos">10.00</span></td>
                            <td><img src="img/edit.png"><img src="img/delete.png"><img src="img/detalle.png"></td>
                        </tr>
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
