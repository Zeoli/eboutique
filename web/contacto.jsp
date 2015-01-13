<%-- 
    Document   : contacto
    Created on : 30/12/2014, 02:30:07 PM
    Author     : Toni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/contacto.css">
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
                            <% if(session.getAttribute("usuario") == null ){ %>
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
                <div id="division"></div>
                <div class="imagen-contacto">
                    <img src="img/contacto.jpg">
                </div>
                <div class="form-contacto">
                    <div id="datos-empresa">
                        <p>Contactanos:</p>
                            <h5>
                                Direccion <br />
                                Direccion <br />
                                Mail <br />
                                Tel <br />
                                Fax <br />
                            </h5>
                    </div>
                    <div id="links">
                        <img src="img/facebook-logo.png">
                        <img src="img/twitter-logo.png">
                    </div>
                    <div id="form-contact">
                        <div id="formulario-contacto">
                            <form id="forma" method="POST" action="">                                
                                <input id="entrada" type="text" placeholder="Nombre" />                                
                                <input id="entrada" type="text" placeholder="Email" />                                
                                <input id="entrada" type="text" placeholder="Proposito" />
                                <textarea rows="4" placeholder="Mensaje"></textarea>
                                <div id="mensaje-error"></div>
                                <input id="btn-enviar" type="button" value="Enviar"/>
                            </form>
                        </div>
                    </div>
                </div>
                <div id="division"></div>
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
            <form id="registro" action="Sesiones" method="post">
                <input id="campos" name="accion" type="hidden" value="IniciarSesion">
                <label>Usuario:</label> <br />
                <input id="campos" name="usuario" type="text">
                <label>Password:</label> <br />
                <input id="campos" name="password" type="password">
                <input id="submit" type="submit" value="Enviar">
            </form>
            <p><a id="id_register_link" href="registro.jsp" class="nooverlay">Crear Una Cuenta</a></p>
        </div>
    </body>
</html>
