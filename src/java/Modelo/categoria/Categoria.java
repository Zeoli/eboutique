/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.categoria;
/**
 *
 * @author Toni
 */
public class Categoria {
    //Las columnas que tiene la tabla Producto
    private int id;
    private String nombre;
    //Constructor de la clase sin parametros
    public Categoria() {
    }
    //Constructor de la clase con parametros
    public Categoria(int codigoCategoria, String nombre) {
        this.id = codigoCategoria;
        this.nombre = nombre;
    }
    //Metodo toString de la clase que nos retorna
    //el nombre del producto
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


