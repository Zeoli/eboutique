package Controlador.user;

import Modelo.user.User;
import Modelo.user.UserDB;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@author Henry Joe Wong Urquiza

public class Usuario extends HttpServlet {

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
            case "RegistrarUsuario":
                this.registrarUser(request, response);
                break;
            case "ModificarUsuario":
                this.actualizarUser(request, response);
                break;
            case "EliminarUsuario":
                this.eliminarUsuario(request, response);
                break;
        }

    }
    //Metodo que sirve para registrar un producto 
    private void registrarUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         User r = new User();
        //request.getParameter --> Sirve para obtener los valores de las cajas de texto
        r.setNombre(request.getParameter("txtNombre"));
        r.setApellidoP(request.getParameter("txtApellidoP"));
        r.setApellidoM(request.getParameter("txtApellidoM"));
        r.setEdad(Integer.parseInt(request.getParameter("txtEdad")));
        r.setUsername(request.getParameter("txtUsername"));
        r.setPassword(request.getParameter("txtPassword"));
        r.setEmail(request.getParameter("txtEmail"));
        r.setRol(Integer.parseInt(request.getParameter("txtRol")));
        boolean rpta = UserDB.insertarUsuario(r);
        if (rpta) {
            //Si inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=Se registro del producto de manera correcta");
        } else {
            //Si no se inserto lo redireccionamos a otra pagina que se llama "mensaje.jsp"
            response.sendRedirect("mensaje.jsp?men=No se registro el producto");
        }
    }
    //Metodo que sirve para actualizar un producto
    private void actualizarUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User r = new User();
        r.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        r.setNombre(request.getParameter("txtNombre"));
        r.setApellidoP(request.getParameter("txtApellidoP"));
        r.setApellidoM(request.getParameter("txtApellidoM"));
        r.setEdad(Integer.parseInt(request.getParameter("textEdad")));
        r.setUsername(request.getParameter("txtUsername"));
        r.setPassword(request.getParameter("txtPassword"));
        r.setEmail(request.getParameter("txtEmail"));
        r.setRol(Integer.parseInt(request.getParameter("txtRol")));
        boolean rpta = UserDB.actualizarUser(r);
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se actualizo el producto de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se actualizo el producto");
        }
    }
    
    private void eliminarUsuario (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User rol = new User();
        rol.setId(Integer.parseInt(request.getParameter("txtCodigo")));
        boolean rpta = UserDB.eliminarUser(rol.getId());
        if (rpta) {
            response.sendRedirect("mensaje.jsp?men=Se elimino la categoria de manera correcta");
        } else {
            response.sendRedirect("mensaje.jsp?men=No se elimino correctamente la categoria");
        }
    }

    
}
