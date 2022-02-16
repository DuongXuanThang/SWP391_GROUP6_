/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Duong Xuan Thang
 */
public class Cart {
    private List<Item> items;
   
    public Cart(){
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public Cart(List<Item> items) {
        this.items = items;
    }
    
    private Item getItemById(int id){
        for (Item item : items) {
            if(item.getProduct().getId()== id){
                return item;
            }
        }
        return null;
    }
    public  int getQuantityById(int id){
        return getItemById(id).getQuantity();
    }
    //them vao gio
    public void addItem(Item t){
        // da co san pham trong gio
        if(getItemById(t.getProduct().getId())!= null){
            Item i = getItemById(t.getProduct().getId());
            i.setQuantity(i.getQuantity()+t.getQuantity());
        }else{
            //chua co sp
            items.add(t);
        }
    }
    //xoa sp khoi gio hang
    public void removeItem(int id){
        if(getItemById(id)!=null){
            items.remove(getItemById(id));
        }
        
    }
    public double getTotalMoney(){
        double t =0;
        for (Item item : items) {
            t+= item.getQuantity()* item.getPrice();
        }
        return t;
    }
}
