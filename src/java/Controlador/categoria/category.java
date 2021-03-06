package Controlador.categoria;

import Modelo.categoria.Categoria;
import Modelo.categoria.CategoriaDB;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@author Henry Joe Wong Urquiza

public class category extends HttpServlet {

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
            case "RegistrarCategoria":
                this.registrarCategoria(request, response);
                break;
            case "ModificarCategoria":
                this.actualizarCategoria(request, response);
                break;
            case "EliminarCategoria":
                this.eliminarCategoria(request, response);
                break;
        }

    }
    //Metodo que sirve para registrar un producto 
    private void registrarCategoria(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Categoria r = new Categoria();
        //request.getParameter --> Sirve para obtener los valores de las cajas de texto
        r.setNombre(request.getParameter("txtCategoria"));
        boolean rpta = CategoriaDB.insertarCategoria(r);
        if (rpta) {
            //Si inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("category.jsp");
        } else {
            //Si no se inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("category.jsp");
        }
    }
    //Metodo que sirve para actualizar un producto
    private void actualizarCategoria(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Categoria r = new Categoria();
        r.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        r.setNombre(request.getParameter("txtNombre"));
        boolean rpta = CategoriaDB.actualizarCategoria(r);
        if (rpta) {
            response.sendRedirect("category.jsp");
        } else {
            response.sendRedirect("category.jsp");
        }
    }
    
    private void eliminarCategoria (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Categoria rol = new Categoria();
        rol.setId(Integer.parseInt(request.getParameter("id")));
        boolean rpta = CategoriaDB.eliminarCategoria(rol.getId());
        if (rpta) {
            response.sendRedirect("category.jsp");
        } else {
            response.sendRedirect("category.jsp");
        }
    }

    
}
