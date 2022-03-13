/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Admin;
import entity.Customer;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Duong Xuan Thang
 */
public class DAOAdmin {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Admin login(String username, String pass) {
        String query = "select * from Admin\n"
                + "where username = ?\n"
                + "and password =?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
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
                        rs.getFloat(4),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getInt(2),
                        rs.getInt(16),
                        rs.getString(14)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addProduct(Product p) {
        LocalDate curDate = java.time.LocalDate.now(); // lay ngay hien tai
        String date = curDate.toString();
        String sql = "insert into [Product] values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(2, p.getName());
            ps.setFloat(3, p.getPrice());
            ps.setInt(1, p.getCategoryID());
            ps.setInt(4, 1);
            ps.setString(5, p.getTitle());
            ps.setString(6, p.getDescription());
            ps.setString(7, p.getImage());
            ps.setString(9, p.getImage1());
            ps.setString(8, date);
            ps.setString(13, "");
            ps.setFloat(14, 0);
            ps.setString(10, p.getImage2());
            ps.setString(11, p.getImage3());
            ps.setString(12, p.getInformation());
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteProduct(int id) {
        String sql = "delete from [Product] where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Product getProductbyId(int id) {

        String query = "select * from product\n"
                + "where id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(3),
                        rs.getString(8),
                        rs.getFloat(4),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getInt(2),
                        rs.getInt(16),
                        rs.getString(14));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void editProduct(Product p, int id) {
        LocalDate curDate = java.time.LocalDate.now(); // lay ngay hien tai
        String date = curDate.toString();
        String sql = "UPDATE [Product]\n"
                + "   SET [cate_Id] = ?\n"
                + "      ,[name] = ?\n"
                + "      ,[price] =?\n"
                + "      ,[status] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[content] = ?\n"
                + "      ,[image_link] = ?\n"
                + "      ,[created] = ?\n"
                + "      ,[image_link1] = ?\n"
                + "      ,[image_link2] = ?\n"
                + "      ,[image_link3] = ?\n"
                + "      ,[information] = ?\n"
                + "      ,[review] = ?\n"
                + "      ,[starview] = ?\n"
                + " WHERE id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(2, p.getName());
            ps.setFloat(3, p.getPrice());
            ps.setInt(1, p.getCategoryID());
            ps.setInt(4, 1);
            ps.setString(5, p.getTitle());
            ps.setString(6, p.getDescription());
            ps.setString(7, p.getImage());
            ps.setString(9, p.getImage1());
            ps.setString(8, date);
            ps.setString(13, "");
            ps.setFloat(14, 0);
            ps.setString(10, p.getImage2());
            ps.setString(11, p.getImage3());
            ps.setString(12, p.getInformation());
            ps.setInt(15, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void main(String[] args) {
        DAOAdmin dao = new DAOAdmin();

        Admin a = dao.login("admin", "123456");
        System.out.println(a);
        Product p = new Product(99, "test3", "test3", 0, "test3", "test3", "test3", "test3", "test3", "test3", 1,23,"aa");
        Product q = dao.getProductbyId(21);

//        dao.addProduct(p);
        dao.editProduct(p, q.getId());
//        System.out.println(p);
//        dao.deleteProduct(20);
    }
}
