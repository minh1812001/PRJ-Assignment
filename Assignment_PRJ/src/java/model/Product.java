/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Minh-PC
 */
public class Product {
    private int id;
    private int quantity;
    private double price;
    private String name;
    private String note;

    public Product() {
    }

    public Product(int id, int quantity, double price, String name, String note) {
        this.id = id;
        this.quantity = quantity;
        this.price = price;
        this.name = name;
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", quantity=" + quantity + ", price=" + price + ", name=" + name + ", note=" + note + '}';
    }
    
  
}
