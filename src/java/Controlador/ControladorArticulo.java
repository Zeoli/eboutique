/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Articulo;
import Modelo.ArticuloDB;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lety
 */
public class ControladorArticulo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 
    //Para controlar peticiones del tipo GET
      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
 
    }
    //Para controlar peticiones del tipo POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    //Un metodo que recibe todas las peticiones a si sea GET y POST
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //La accion se va a guardar en un caja de texto oculto que nos dira que accion
        //debemos hacer
        String accion = request.getParameter("accion");
        switch (accion) {
            case "RegistrarArticulo":
                this.registrarArticulo(request, response);
                break;
            case "ModificarArticulo":
                this.actualizarArticulo(request, response);
                break;
            case "EliminarArticulo":
                this.eliminarArticulo(request, response);
                break;
        }

    } 
    //Metodo que sirve para registrar un producto 
    private void registrarArticulo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Articulo articulo = new Articulo();
        //request.getParameter --> Sirve para obtener los valores de las cajas de texto
        articulo.setNombre(request.getParameter("txtNombre").toUpperCase());
        articulo.setDescripcion(request.getParameter("txtDescripcion").toUpperCase());
        articulo.setPrecio(Float.parseFloat( request.getParameter("txtPrecio")));
        articulo.setCategoria(Integer.parseInt(request.getParameter("txtCategoria")));
        
        boolean rpta = ArticuloDB.insertarArticulo(articulo);
        if (rpta) {
            //Si inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=Se registro del producto de manera correcta");
        } else {
            //Si no se inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=No se registro el producto");
        }
    }
    
    private void actualizarArticulo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Articulo articulo = new Articulo();
        articulo.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        articulo.setNombre(request.getParameter("txtNombre").toUpperCase());
        articulo.setDescripcion(request.getParameter("txtDescripcion").toUpperCase());
        articulo.setPrecio(Float.parseFloat(request.getParameter("txtPrecio")));
        articulo.setCategoria(Integer.parseInt(request.getParameter("txtCategoria")));
        boolean rpta = ArticuloDB.actualizarArticulo(articulo);
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se actualizo el producto de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se actualizo el producto");
        }
    }
    
    private void eliminarArticulo (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Articulo articulo = new Articulo();
        articulo.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        boolean rpta = ArticuloDB.eliminarArticulo(articulo.getId());
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se elimino el articulo de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se elimino correctamente el articulo");
        }
    }

}

