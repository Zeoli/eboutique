/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Toni
 */
public class Rol {
    
    private int id;
    private String nombre;
    
    public Rol(){}
    
    public Rol(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
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
    
}
