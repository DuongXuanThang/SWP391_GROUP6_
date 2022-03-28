/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class DetailOrder {
        private int oid,pid;
    private int quantity;
    private String pname;
    private double price;

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public DetailOrder() {
    }

    public DetailOrder(int oid, int pid, int quantity, String pname, double price) {
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.pname = pname;
        this.price = price;
    }


    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
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

    @Override
    public String toString() {
        return "DetailOrder{" + "oid=" + oid + ", pid=" + pid + ", quantity=" + quantity + ", pname=" + pname + ", price=" + price + '}';
    }


    
}
