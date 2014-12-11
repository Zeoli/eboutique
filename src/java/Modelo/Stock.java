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
public class Stock {
    private int id;
    private int stock;
    
    public Stock(){}
    
    public Stock(int id, int stock) {
        this.id = id;
        this.stock = stock;
    }
    
   
    
    public void setId (int id){
        this.id = id;
    }
    
    public int getId (){
        return this.id;
    }
    
    public void setStock (int stock){
        this.stock = stock;
    }
    
    public int getStock(){
        return this.stock;
    }
    
}
