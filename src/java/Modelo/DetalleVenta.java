/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Lety
 */
public class DetalleVenta {
    private int idVenta;
    private int idProducto;
    private float cantidad;
    
    public DetalleVenta(){}
    
    public DetalleVenta(int idVenta, int idProducto, float cantidad){
        this.cantidad = cantidad;
        this.idProducto = idProducto;
        this.idVenta = idVenta;
    }
    
    public void setIdVenta(int idVenta){
        this.idVenta = idVenta;
    }
    public void setIdProducto(int producto){
        this.idProducto = producto;
    }
    public void setCantidad(float cantidad){
        this.cantidad = cantidad;
    }
    public int getIdVenta(){
        return this.idVenta;
    }
    public int getIdProducto(){
        return this.idProducto;
    }
    public float getCantidad(){
        return this.cantidad;
    }
    
}
