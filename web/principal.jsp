<%-- 
    Document   : principal
    Created on : 29/12/2014, 02:44:09 PM
    Author     : Toni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
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
                            <a href="#">Inicia Sesión/Registrate</a>
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
                <div class="galerias">
                    <div id="panel-izquierdo">
                        <div id="encabezado">
                            <p id="titulo">
                                <span>Productos de temporada:</span>
                            </p>
                        </div>
                        <div id="galery">
                            <div id="galeria_imagen">
                                <img id="imgGaleria" src="img/ropa/1.png" />
                            </div>
                        </div>
                        <div id="galeria_miniaturas">
                            <img class="miniatura" onclick="javascript:document.getElementById('imgGaleria').src=this.src;" src="img/ropa/1.png" />
                            <img class="miniatura" onclick="javascript:document.getElementById('imgGaleria').src=this.src;" src="img/ropa/2.png" />
                        </div>
                    </div>
                    <div id="panel-derecho">
                        <div id="galeria-derecha">
                            <img src="img/ropa/3.png">
                        </div>
                    </div>
                </div>
                
                <div id="division"></div>
                
                <hr id="row">
                
                <div id="division">
                    <div id="mc">
                        <div id="ad-seccion"></div>
                        <div id="ad-seccion"></div>
                        <div id="ad-seccion"></div>
                    </div>
                </div>
                
                <div class="advertasing">
                    <div id="seccion">
                        <div id="texto-seccion">
                            <p>
                                <span>ESTRENA CON</span> <br />
                                <span>LO NUEVO</span> <br />
                                <span>DE LA TEMPORADA</span> <br />
                            </p>
                        </div>
                        <hr>
                    </div>
                    <div id="seccion">
                        <div id="texto-seccion">
                            <p>
                                <span>NUEVOS</span> <br />
                                <span>ACCESORIOS</span> <br />
                                <span>DE TEMPORADA</span> <br />
                            </p>
                        </div>
                        <hr>
                    </div>
                    <div id="seccion">
                        <div id="texto-seccion">
                            <p>
                                <span>ENVIOS GRATUITOS</span> <br />
                                <span>EN COMPRAS</span> <br />
                                <span>MAYORES DE $50</span> <br />
                            </p>
                        </div>
                        <hr>
                    </div>
                </div>
                
                <div id="division"></div>
                
                <div class="nuevo">
                    <div id="panel-izquierdo">
                        <div id="encabezado">
                            <p id="titulo">
                                <span>Productos Nuevos:</span>
                            </p>
                        </div>
                        <div id="cont">
                            <div id="muestras">
                                <div id="muestra"></div>
                                <div id="muestra"></div>
                            </div>
                        </div>
                    </div>
                    <div id="panel-derecho">
                        <div id="muestras">
                            <div id="muestra"></div>
                            <div id="muestra"></div>
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
    </body>
</html>
