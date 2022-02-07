/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author Duong Xuan Thang
 */
public class Transaction {
    private int id;
    private String user_name;
    private String user_mail;
    private String user_phone;
    private String address;
    private String message;
    private int amount;
    private String payment;
    private boolean status;
    private  Date created;

    public Transaction(int id, String user_name, String user_mail, String user_phone, String address, String message, int amount, String payment, boolean status, Date created) {
        this.id = id;
        this.user_name = user_name;
        this.user_mail = user_mail;
        this.user_phone = user_phone;
        this.address = address;
        this.message = message;
        this.amount = amount;
        this.payment = payment;
        this.status = status;
        this.created = created;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_mail() {
        return user_mail;
    }

    public void setUser_mail(String user_mail) {
        this.user_mail = user_mail;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    @Override
    public String toString() {
        return "Transaction{" + "id=" + id + ", user_name=" + user_name + ", user_mail=" + user_mail + ", user_phone=" + user_phone + ", address=" + address + ", message=" + message + ", amount=" + amount + ", payment=" + payment + ", status=" + status + ", created=" + created + '}';
    }
    

    
}
