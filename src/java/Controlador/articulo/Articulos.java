package Controlador.articulo;

import Modelo.articulo.Articulo;
import Modelo.articulo.ArticuloDB;
import Modelo.stock.StockDB;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@author Henry Joe Wong Urquiza

public class Articulos extends HttpServlet {

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
         Articulo r = new Articulo();
        //request.getParameter --> Sirve para obtener los valores de las cajas de texto
        r.setNombre(request.getParameter("txtNombre"));
        r.setImg(request.getParameter("txtImagen"));
        r.setDescripcion(request.getParameter("txtDescripcion"));
        r.setPrecio(Double.valueOf(request.getParameter("txtPrecio")));
        r.setCategoria(Integer.parseInt(request.getParameter("txtCategoria")));
        boolean rpta = ArticuloDB.insertarArticulo(r);
        if (rpta) {
            //Si inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("articulos.jsp");
        } else {
            //Si no se inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("articulos.jsp");
        }
    }
    //Metodo que sirve para actualizar un producto
    private void actualizarArticulo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Articulo r = new Articulo();
        r.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        r.setNombre(request.getParameter("txtNombre"));
        r.setImg(request.getParameter("txtImagen"));
        r.setDescripcion(request.getParameter("txtDescripcion"));
        r.setPrecio(Double.valueOf(request.getParameter("txtPrecio")));
        r.setCategoria(Integer.parseInt(request.getParameter("txtCategoria")));
        boolean rpta = ArticuloDB.actualizarArticulo(r);
        if (rpta) {
            response.sendRedirect("articulos.jsp");
        } else {
            response.sendRedirect("articulos.jsp");
        }
    }
    
    private void eliminarArticulo (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Articulo rol = new Articulo();
        rol.setId(Integer.parseInt(request.getParameter("id")));
        boolean d = StockDB.eliminarStock(rol.getId());
        boolean rpta = ArticuloDB.eliminarArticulo(rol.getId());
        if (rpta) {
            response.sendRedirect("articulos.jsp");
        } else {
            response.sendRedirect("articulos.jsp");
        }
    }

    
}
