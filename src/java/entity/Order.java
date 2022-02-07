/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;

/**
 *
 * @author Duong Xuan Thang
 */
public class Order {
    private int id;

    private List<Product> product;
    private List<Transaction> trans;
    private int quantity;

    public Order(int id, List<Product> product, List<Transaction> trans, int quantity) {
        this.id = id;
        this.product = product;
        this.trans = trans;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }

    public List<Transaction> getTrans() {
        return trans;
    }

    public void setTrans(List<Transaction> trans) {
        this.trans = trans;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", product=" + product + ", trans=" + trans + ", quantity=" + quantity + '}';
    }
    
    
}

