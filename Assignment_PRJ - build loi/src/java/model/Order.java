/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;


/**
 *
 * @author Minh-PC
 */
public class Order {
    private int id;
    private int user_id;
    private double totalPrice;
    private String note;
    private Date created_date;
    private int shipping_id;

    public Order() {
    }

    public Order(int id, int user_id, double totalPrice, String note, Date created_date, int shipping_id) {
        this.id = id;
        this.user_id = user_id;
        this.totalPrice = totalPrice;
        this.note = note;
        this.created_date = created_date;
        this.shipping_id = shipping_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public int getShipping_id() {
        return shipping_id;
    }

    public void setShipping_id(int shipping_id) {
        this.shipping_id = shipping_id;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", user_id=" + user_id + ", totalPrice=" + totalPrice + ", note=" + note + ", created_date=" + created_date + ", shipping_id=" + shipping_id + '}';
    }
    
}