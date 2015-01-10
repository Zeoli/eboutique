/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.stock;

/**
 *
 * @author Toni
 */
public class Stock {
    //Las columnas que tiene la tabla Producto
    private int idArticulo;
    private String articuloNombre;
    private int precio;
    private int cantidad;
    //Constructor de la clase sin parametros
    public Stock() {
    }
    //Constructor de la clase con parametros
    public Stock(int codigoArticulo, int cantidad) {
        this.idArticulo = codigoArticulo;
        this.cantidad = cantidad;
    }
    
    //Metodos get y set de la clase
    public void setId(int id){
        this.idArticulo = id;
    }
    public int getId (){
        return this.idArticulo;
    }
    
    public void setCantidad (int Cantidad){
        this.cantidad = Cantidad;
    }
    public int getCantidad (){
        return this.cantidad;
    }
    
    public void setNombre(String nombre){
        this.articuloNombre = nombre;
    }
    public String getNombre(){
        return this.articuloNombre;
    }
    public void setPrecio(int precio){
        this.precio = precio;
    }
    public int getPrecio(){
        return this.precio;
    }



}

