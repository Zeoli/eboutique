/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.user;

/**
 *
 * @author Toni
 */
public class User {
    //Las columnas que tiene la tabla Producto
    private int id;
    private String nombre;
    private String apellidoP;
    private String apellidoM;
    private int edad;
    private String username;
    private String password;
    private String email;
    private String direccion;
    private String ciudad;
    private String cp;
    private int rol;
    //Constructor de la clase sin parametros
    public User() {
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return this.email;
    }
    public void setDireccion(String direccion){
        this.direccion = direccion;
    }
    public String getDireccion(){
        return this.direccion;
    }
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
    
    public void setApellidoP(String apellido){
        this.apellidoP = apellido;
    }
    public String getApellidoP(){
        return this.apellidoP;
    }
    
    public void setApellidoM(String apellido){
        this.apellidoM = apellido;
    }
    public String getAPellidoM(){
        return this.apellidoM;
    }
    
    public void setEdad(int edad){
        this.edad = edad;
    }
    public int getEdad(){
        return this.edad;
    }
    
    public void setUsername(String username){
        this.username = username;
    }
    public String getUsername(){
        return this.username;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
    public String getPassword(){
        return this.password;
    }



}


