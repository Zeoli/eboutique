<%-- 
    Document   : users
    Created on : 2/01/2015, 12:22:16 PM
    Author     : Toni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link type="text/css" href="css/jquery-ui.css" rel="stylesheet">
        <script src="javascript/jquery.min.js"></script>
        <script src="javascript/jquery-ui.min.js"></script>
        <script src="javascript/dialog.js" type="text/javascript"></script>
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
                                <span>Usuarios</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="main-admin">
                    <input id="dialogUser" value="Agregar Usuario" type="button" />
                    <input id="emergente" value="Agregar Rol" type="button" />
                    <br />
                    <table>
                        <th>Código Usuario <hr id="row"></th>
                        <th>Nombre Usuario <hr id="row"></th>
                        <th>Rol Usuario <hr id="row"></th>
                        <th>Opciones <hr id="row"></th>
                        <tr>
                            <td>1</td>
                            <td>m</td>
                            <td>admin</td>
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
        
        <div id="Rol">
            <form id="registro" action="Rol" method="post">
                <label>Rol:</label> <br />
                <input type="hidden" name="accion" value="RegistrarRol" />
                <input id="campos" name="txtNombre" type="text">
                <input id="submit" type="submit" value="Enviar">
            </form>
        </div>
        
        <div id="Usuario">
            <form id="registro" action="" method="post">
                <label>Nombre:</label> <br />
                <input type="hidden" name="accion" value="RegistrarUsuario" />
                <input id="campos" name="txtNombre" type="text">
                <label>Apellidos:</label> <br />
                <input id="campos" name="txtApellido" type="text">
                <label>Edad:</label> <br />
                <input id="campos" name="txtEdad" type="text">
                <label>Username:</label> <br />
                <input id="campos" name="txtUsername" type="text">
                <label>Contraseña:</label> <br />
                <input id="campos" name="txtUsername" type="password">
                <label>Email:</label> <br />
                <input id="campos" name="txtUsername" type="text">
                <label>Rol:</label> <br />
                <input id="campos" name="txtRol" type="text" readonly>
                <input id="submit" type="submit" value="Enviar">
            </form>
        </div>
    </body>
</html>
