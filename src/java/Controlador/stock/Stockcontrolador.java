package Controlador.stock;

import Modelo.stock.Stock;
import Modelo.stock.StockDB;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@author Henry Joe Wong Urquiza

public class Stockcontrolador extends HttpServlet {

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
        Stock r = new Stock();
        //request.getParameter --> Sirve para obtener los valores de las cajas de texto
        r.setId(Integer.parseInt(request.getParameter("txtNombre")));
        r.setCantidad(Integer.parseInt(request.getParameter("txtCantidad")));
        boolean rpta = StockDB.insertarStock(r);
        if (rpta) {
            //Si inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("articulos.jsp");
        } else {
            //Si no se inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("articulos.jsp");
        }
    }
    //Metodo que sirve para actualizar un producto
    private void actualizarStock(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Stock r = new Stock();
        r.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        r.setCantidad(Integer.parseInt(request.getParameter("txtCantidad")));
        boolean rpta = StockDB.actualizarStock(r);
        if (rpta) {
            response.sendRedirect("articulos.jsp");
        } else {
            response.sendRedirect("articulos.jsp");
        }
    }
    
    private void eliminarStock (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Stock rol = new Stock();
        rol.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        boolean rpta = StockDB.eliminarStock(rol.getId());
        if (rpta) {
            response.sendRedirect("articulos.jsp");
        } else {
            response.sendRedirect("articulos.jsp");
        }
    }

    
}
