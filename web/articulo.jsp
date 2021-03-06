<%-- 
    Document   : articulo
    Created on : 10/01/2015, 03:40:20 AM
    Author     : Toni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.categoria.Categoria" %>
<%@page import="Modelo.categoria.CategoriaDB" %>
<%@page import="Modelo.articulo.Articulo" %>
<%@page import="Modelo.articulo.ArticuloDB" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/categorias.css">
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
                <div id="superior">
                    <div id="marco">
                        <div id="encabezado">
                            <p id="titulo">
                                <span>Articulos <%= CategoriaDB.obtenerCategoria(Integer.parseInt(request.getParameter("id"))).getNombre() %>:</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="galerias">
                    <div id="grid">
                        <%
                            ArrayList<Articulo> lista = ArticuloDB.obtenerArticulo();
                            for (Articulo p : lista) {
                        %>
                        <div id="categoria">
                            <input id="articul" value="<%= p.getNombre() %>" type="button" />
                            <form action="Carrito" method="POST">
                                <input id="campos" name="accion" type="hidden" value="Agregar">
                                <input id="campos" name="id" type="hidden" value="<%= p.getId() %>">
                                <input value="Agregar a Carrito" type="submit" />
                            </form>
                        </div>
                        <% } %>
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


