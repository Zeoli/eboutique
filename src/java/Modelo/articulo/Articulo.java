/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.articulo;

/**
 *
 * @author Toni
 */
public class Articulo {
    //Las columnas que tiene la tabla Producto
    private int id;
    private String nombre;
    //Constructor de la clase sin parametros
    public Articulo() {
    }
    //Constructor de la clase con parametros
    public Articulo(int codigoRol, String nombre) {
        this.id = codigoRol;
        this.nombre = nombre;
    }
    //Metodo toString de la clase que nos retorna
    //el nombre del producto
    @Override
    public String toString() {
        return nombre.toUpperCase();
    }
    //Metodos get y set de la clase
    public void setId(int id){
        this.id = id;
    }
    public int getId (){
        return this.id;
    }
    
    public void setNombre (String nombre){
        this.nombre = nombre;
    }
    public String getNombre (){
        return this.nombre;
    }



}
