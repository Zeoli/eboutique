package Controlador.rol;

import Modelo.roles.RolDB;
import Modelo.roles.roles;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@author Henry Joe Wong Urquiza

public class Rol extends HttpServlet {

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
            case "RegistrarRol":
                this.registrarRol(request, response);
                break;
            case "ModificarRol":
                this.actualizarRol(request, response);
                break;
            case "EliminarRol":
                this.eliminarRol(request, response);
                break;
        }

    }
    //Metodo que sirve para registrar un producto 
    private void registrarRol(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        roles r = new roles();
        //request.getParameter --> Sirve para obtener los valores de las cajas de texto
        r.setNombre(request.getParameter("txtNombre"));
        boolean rpta = RolDB.insertarRol(r);
        if (rpta) {
            //Si inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=Se registro del producto de manera correcta");
        } else {
            //Si no se inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=No se registro el producto");
        }
    }
    //Metodo que sirve para actualizar un producto
    private void actualizarRol(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        roles r = new roles();
        r.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        r.setNombre(request.getParameter("txtNombre"));
        boolean rpta = RolDB.actualizarRol(r);
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se actualizo el producto de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se actualizo el producto");
        }
    }
    
    private void eliminarRol (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        roles rol = new roles();
        rol.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        boolean rpta = RolDB.eliminarRol(rol.getId());
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se elimino la categoria de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se elimino correctamente la categoria");
        }
    }

    
}
