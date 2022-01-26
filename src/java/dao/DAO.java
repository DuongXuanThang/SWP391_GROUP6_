/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Duong Xuan Thang
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(3),
                        rs.getString(8),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
     public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
     public List<Product> getProductbyCId(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                +"where cate_ID=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(3),
                        rs.getString(8),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
      public List<Product> getlastProducts() {
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from product\n"
                +"order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(3),
                        rs.getString(8),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
      public Product getProductbyId(String id) {
        
        String query = "select * from product\n"
                +"where id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(3),
                        rs.getString(8),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
       public List<Product> getProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                +"where [name] like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%"+txtSearch+"%");
            
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(3),
                        rs.getString(8),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
       }
       
       public Account login(String user,String pass){
            String query = "select * from Customer\n"
                +"where username = ?\n"
                    +"where password = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
             ps.setString(2, user);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(5),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
           return null;
       }
       public int countProduct(int result){
           
           return result;
       }
     public static void main(String[] args) {
        DAO dao = new DAO();
        
        //List<Category> listC = dao.getAllCategory();
        //List<Product> listP = dao.getAllProduct();
        List<Product> listP = dao.getProductByName("kit");// search
       // Product p1 = dao.getProductbyId("1");
        // System.out.println(p1);
       // List<Product> listP = dao.getlastProducts();
       int count = 0;
//        Account a = dao.login("thang", "123456");
//        System.out.println(a);
        for (Product p : listP) {
            System.out.println(p);
            count ++;
        }
         System.out.println(count);
       
    }
}
