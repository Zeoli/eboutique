package Modelo.articulo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author Lety
 */
public class venta {
    private int codigo;
    private int cliente;
    private int producto ;
    private double precio; 
    private int cantidad;
    private double total;
    
    public venta(int codigo, int cliente, int productos, double precio, int cantidad, double total ) {
        this.codigo = codigo;
        this.cliente = cliente;
        this.precio = precio;
        this.cantidad = cantidad;
        this.total = total;
        this.producto = producto;
    }

    venta() {
         }

     public void setId(int id){
        this.codigo = id;
    }
    public int getId (){
        return this.codigo;
    }
    public void setCliente(int cliente){
        this.cliente = cliente;
    }
    public int getCliente (){
        return this.cliente;
    }
    public void setPrecio(double p){
        this.precio = p;
    }
    public double getPrecio(){
        return this.precio;
    }
    public void setCantidad(int c){
        this.cantidad = c;
    }
    public int getCantidad (){
        return this.cantidad;
    }
    public void setTotal(double t){
        this.total = t;
    }
    public double getTotal (){
        return this.total;
    }
    public void setProducto(int p){
        this.codigo = p;
    }
    public int getProducto(){
        return this.producto;
    }
}
