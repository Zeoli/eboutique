/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

/**
 *
 * @author Lety
 */
public class StockDB {
  public static synchronized boolean insertarStock(Stock stock) {
        Connection cn = null;
        CallableStatement cl = null;
        boolean rpta = false;
        try {
            //Nombre del procedimiento almacenado y como espera tres parametros
            //le ponemos 3 interrogantes
            String call = "{CALL Insert_stock(?,?)}";
            //Obtenemos la conexion
            cn = Conexion.getConexion();
            //Decimos que vamos a crear una transaccion
            cn.setAutoCommit(false);
            //Preparamos la sentecia
            cl = cn.prepareCall(call);
            cl.registerOutParameter(1, Types.INTEGER);
            cl.setInt(2, stock.getStock());
            rpta = cl.executeUpdate() == 1 ? true : false;
            if (rpta) {
                //Confirmamos la transaccion
                cn.commit();
            } else {
                //Negamos la transaccion
                Conexion.deshacerCambios(cn);
            }
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (SQLException e) {
            e.printStackTrace();
            Conexion.deshacerCambios(cn);
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (Exception e) {
            e.printStackTrace();
            Conexion.deshacerCambios(cn);
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        }
        return rpta;
    }
  
  public static synchronized boolean actualizarStock(Stock stock) {
        Connection cn = null;
        CallableStatement cl = null;
        boolean rpta = false;
        try {
            //Nombre del procedimiento almacenado y como espera tres parametros
            //le ponemos 3 interrogantes
            String call = "{CALL update_stock(?,?)}";
            //Obtenemos la conexion
            cn = Conexion.getConexion();
            //Decimos que vamos a crear una transaccion
            cn.setAutoCommit(false);
            //Preparamos la sentecia
            cl = cn.prepareCall(call);
            //El primer parametro del procedimiento almacenado es el codigo
            cl.setInt(1, stock.getId());
            //El siguiente parametro del procedimiento almacenado es el nombre
            cl.setInt(2, stock.getStock());
            //Ejecutamos la sentencia y si nos devuelve el valor de 1 es porque
            //registro de forma correcta los datos
            rpta = cl.executeUpdate() == 1 ? true : false;
            if (rpta) {
                //Confirmamos la transaccion
                cn.commit();
            } else {
                //Negamos la transaccion
                Conexion.deshacerCambios(cn);
            }
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (SQLException e) {
            e.printStackTrace();
            Conexion.deshacerCambios(cn);
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (Exception e) {
            e.printStackTrace();
            Conexion.deshacerCambios(cn);
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        }
        return rpta;
    }
  
   public static synchronized Stock obtenerStock(int id) {
        Stock stock = new Stock();
        Connection cn = null;
        CallableStatement cl = null;
        ResultSet rs = null;
        try {
            //Nombre del procedimiento almacenado
            String call = "{CALL get_stock_one(?)}";
            cn = Conexion.getConexion();
            cl = cn.prepareCall(call);
            cl.setInt(1, id);
            rs = cl.executeQuery();
            while (rs.next()) {
                stock.setId(rs.getInt("idproducto"));
                stock.setStock(rs.getInt("stock"));
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
        return stock;
    }
    
    public static synchronized ArrayList<Stock> obtenerStock() {
        //El array que contendra todos nuestros productos
        ArrayList<Stock> lista = new ArrayList<Stock>();
        Connection cn = null;
        CallableStatement cl = null;
        ResultSet rs = null;
        try {
            //Nombre del procedimiento almacenado
            String call = "{CALL get_stock_all()}";
            cn = Conexion.getConexion();
            cl = cn.prepareCall(call);
            //La sentencia lo almacenamos en un resulset
            rs = cl.executeQuery();
            //Consultamos si hay datos para recorrerlo
            //e insertarlo en nuestro array
            while (rs.next()) {
                Stock stock = new Stock();
                //Obtenemos los valores de la consulta y creamos
                //nuestro objeto producto
                stock.setId(rs.getInt("idproducto"));
                stock.setStock(rs.getInt("stock"));
                //Lo adicionamos a nuestra lista
                lista.add(stock);
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
    
    public static synchronized boolean eliminarStock(int id) {
        Connection cn = null;
        CallableStatement cl = null;
        boolean rpta = false;
        try {
            //Nombre del procedimiento almacenado y como espera tres parametros
            //le ponemos 3 interrogantes
            String call = "{CALL delete_stock(?)}";
            //Obtenemos la conexion
            cn = Conexion.getConexion();
            //Decimos que vamos a crear una transaccion
            cn.setAutoCommit(false);
            //Preparamos la sentecia
            cl = cn.prepareCall(call);
            //Como el codigo se autogenera y es del tipo OUT en el procedimiento
            //almacenado le decimos que es OUT y el del tipo Integer en Java
            cl.setInt(1, id);
            //Ejecutamos la sentencia y si nos devuelve el valor de 1 es porque
            //registro de forma correcta los datos
            rpta = cl.executeUpdate() == 1 ? true : false;
            if (rpta) {
                //Confirmamos la transaccion
                cn.commit();
            } else {
                //Negamos la transaccion
                Conexion.deshacerCambios(cn);
            }
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (SQLException e) {
            e.printStackTrace();
            Conexion.deshacerCambios(cn);
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        } catch (Exception e) {
            e.printStackTrace();
            Conexion.deshacerCambios(cn);
            Conexion.cerrarCall(cl);
            Conexion.cerrarConexion(cn);
        }
        return rpta;
    }
    
}