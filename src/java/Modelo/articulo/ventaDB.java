package Modelo.articulo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import Modelo.Conexion;
import Modelo.categoria.Categoria;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Lety
 */
public class ventaDB {
public static synchronized ArrayList<venta> obtenerVenta() {
        ArrayList<venta> lista = new ArrayList<venta>();
        Connection cn = null;
        CallableStatement cl = null;
        ResultSet rs = null;
        try {
            //Nombre del procedimiento almacenado
            String call = "{CALL get_venta_all()}";
            cn = Conexion.getConexion();
            cl = cn.prepareCall(call);
            //La sentencia lo almacenamos en un resulset
            rs = cl.executeQuery();
            //Consultamos si hay datos para recorrerlo
            //e insertarlo en nuestro array
            while (rs.next()) {
                venta r = new venta();
                //Obtenemos los valores de la consulta y creamos
                //nuestro objeto producto
                r.setId(rs.getInt("id"));
                r.setCliente(rs.getInt("nombre"));
                r.setProducto(rs.getInt("producto"));
                r.setPrecio(rs.getDouble("precio"));
                r.setCantidad(rs.getInt("cantidad"));
                r.setTotal(rs.getDouble("TotalPagar"));
                //Lo adicionamos a nuestra lista
                lista.add(r);
            }
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (SQLException e) {
            e.printStackTrace();
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (Exception e) {
            e.printStackTrace();
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        }
        return lista;
    }
}
