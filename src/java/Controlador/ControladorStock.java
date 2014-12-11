/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Stock;
import Modelo.StockDB;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Lety
 */
public class ControladorStock extends HttpServlet {

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
            case "RegistrarStock":
                this.registrarStock(request, response);
                break;
            case "ModificarStock":
                this.actualizarStock(request, response);
                break;
            case "EliminarStock":
                this.eliminarStock(request, response);
                break;
        }

    } 
    //Metodo que sirve para registrar un producto 
    private void registrarStock(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Stock stock = new Stock();
        stock.setStock(Integer.parseInt(request.getParameter("txtStock")));
        
        boolean rpta = StockDB.insertarStock(stock);
        if (rpta) {
            //Si inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=Se registro el  Stock del articulo de manera correcta");
        } else {
            //Si no se inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=No se registro el  Stock del articulo");
        }
    }
    
    private void actualizarStock(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Stock stock = new Stock();
        stock.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        stock.setStock(Integer.parseInt(request.getParameter("txtStock")));
        boolean rpta = StockDB.actualizarStock(stock);
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se actualizo el  Stock del articulo de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se actualizo el  Stock del articulo");
        }
    }
    
    private void eliminarStock (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Stock stock = new Stock();
        stock.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        boolean rpta = StockDB.eliminarStock(stock.getId());
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se elimino el  Stock del articulo de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se elimino correctamenteel  Stock del articulo");
        }
    }

}

