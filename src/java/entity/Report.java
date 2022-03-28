/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Duong Xuan Thang
 */
public class Report {
    public  int productId;
    public  String productname;
    public String date;
    public  int quantity;

    public Report(int productId, String productname, String date, int quantity) {
        this.productId = productId;
        this.productname = productname;
        this.date = date;
        this.quantity = quantity;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Report{" + "productId=" + productId + ", productname=" + productname + ", date=" + date + ", quantity=" + quantity + '}';
    }
    
}
