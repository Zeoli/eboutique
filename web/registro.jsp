<%-- 
    Document   : registro
    Created on : 2/01/2015, 11:48:47 PM
    Author     : Toni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        
        <link type="text/css" href="css/jquery-ui.css" rel="stylesheet">
        <script src="javascript/jquery.min.js"></script>
        <script src="javascript/jquery-ui.min.js"></script>
        <script src="javascript/dialog.js" type="text/javascript"></script>
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
                <div class="menu-header">
                    <div class="carrito">
                        <a href="carrito.jsp">
                            Carrito: 0:
                        </a>
                    </div>
                    <div class="user">
                        <div class="bienvenida">
                            <% if(request.getAttribute("usuario") != null ){ %>
                            <input id="sesion" value="Iniciar Sesión/Registrarse" type="button" />
                            <% } else { %>
                            <% String nombre = (String)session.getAttribute("usuario"); %> 
                            <p id="l"> Bienvenido <%= nombre %></p>
                            <% } %>
                        </div>
                    </div>
                    <div class="options">
                        <ul id="menu">
                            <li><a href="about.jsp">Acerca de</a></li>
                            <li><a href="contacto.jsp">Contacto</a></li>
                            <li><a href="categorias.jsp">Categoría</a></li>
                            <li><a href="principal.jsp">Inicio</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            
            <div class="div-header"></div>
            
                <!-- CONTENIDO -->
            <div class="contenido">
                <div class="registro-box">
                    <form id="form-registro" method="POST" acction="">
                        <fieldset>
                            <legend>Datos de Perfil</legend>
                            <div id="labels">
                                <label>Nombre Completo:</label>
                                <label>Apellidos:</label>
                                <label>Edad:</label>
                                <label>Nombre de Usuario:</label>
                                <label>Contraseña:</label>
                                <label>Correo electrónico:</label>
                            </div>
                            <div id="inputs">
                                <input type="text" placeholder="Nombre" name="Nombre" />
                                <input type="text" placeholder="Apellidos" name="Apellidos" />
                                <input type="text" placeholder="Edad" name="Edad" />
                                <input type="text" placeholder="Username" name="Username" />
                                <input type="password" placeholder="******" name="Password" />
                                <input type="text" placeholder="Email" name="Email" />
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Datos Personales</legend>
                            <div id="labels">
                                <label>Dirección:</label>
                                <label>Ciudad:</label>
                                <label>C.P.</label>
                            </div>
                            <div id="inputs">
                                <input type="text" placeholder="Dirección" name="Direccion" />
                                <input type="text" placeholder="Ciudad" name="Ciudad" />
                                <input type="text" placeholder="Código Postal" name="CP"/>
                            </div>
                        </fieldset>
                        <button type="submit">Registrarse</button>
                    </form>
                </div>
                <!-- Contenido -->
            </div>
            
                <!-- FOOTER -->
            <div class="div-footer"></div>
            
            <div class="footer">
                <div class="sign"></div>
                <div id="vertical"></div>
                <div class="menu-footer">
                    <div class="options-bottom">
                        <ul id="menu-bottom">
                            <li><a href="about.jsp">Acerca de</a></li>
                            <li><a href="contacto.jsp">Contacto</a></li>
                            <li><a href="categorias.jsp">Categoría</a></li>
                            <li><a href="principal.jsp">Inicio</a></li>
                        </ul>
                    </div>
                </div>
                <div id="vertical"></div>
                <div class="sociales"></div>
            </div>
            <hr id="row">
            
            <hr id="internal-row">
            
            <div id="division"></div>
        </div>
        
        <div id="dialog">
            <form id="registro" action="" method="post">
                <label>Usuario:</label> <br />
                <input id="campos" name="usuario" type="text">
                <label>Password:</label> <br />
                <input id="campos" name="password" type="text">
                <input id="submit" type="submit" value="Enviar">
            </form>
            <p><a id="id_register_link" href="registro.jsp" class="nooverlay">Crear Una Cuenta</a></p>
        </div>
    </body>
</html>