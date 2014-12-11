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
public class Articulo {
    private int id;
    private String nombre;
    private String descripcion;
    private float precio;
    private int categoria;
    
    public Articulo(){}
    
    public Articulo(int id, String nombre, String descripcion, float precio, int idCategoria) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.categoria = idCategoria;
    }
    
    @Override
    public String toString() {
        return nombre.toUpperCase();
    }
    
    public void setId (int id){
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
    
    public void setDescripcion(String descripcion){
        this.descripcion = descripcion;
    }
    
    public String getDescripcion(){
        return this.descripcion;
    }
    
    public void setPrecio(float precio){
        this.precio = precio;
    }
    
    public float getPrecio(){
        return this.precio;
    }
    
    public void setCategoria(int idCateg){
        this.categoria = idCateg;
    }
    
    public int getCategoria(){
        return this.categoria;
    }
}
