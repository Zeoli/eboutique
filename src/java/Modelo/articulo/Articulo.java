/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.articulo;

import java.awt.Image;

/**
 *
 * @author Toni
 */
public class Articulo {
    //Las columnas que tiene la tabla Producto
    private int id;
    private String nombre;
    private String descripcion;
    private double precio;
    private int categoria;
    private String img;
    private Image imagen;
    //Constructor de la clase sin parametros
    public Articulo() {
    }
    //Constructor de la clase con parametros
    public Articulo(int codigoRol, String nombre) {
        this.id = codigoRol;
        this.nombre = nombre;
    }
    public void setImagen(Image img){
        this.imagen = img;
    }
    public Image getImagen(){
        return this.imagen;
    }
    public void setDescripcion(String descripcion){
        this.descripcion = descripcion;
    }
    public String getDescripcion(){
        return this.descripcion;
    }
    public void setPrecio(double precio){
        this.precio = precio;
    }
    public double getPrecio(){
        return this.precio;
    }
    public void setCategoria(int categoria){
        this.categoria = categoria;
    }
    public int getCategoria(){
        return this.categoria;
    }
    public void setImg(String img){
        this.img = img;
    }
    public String getImg(){
        return this.img;
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
