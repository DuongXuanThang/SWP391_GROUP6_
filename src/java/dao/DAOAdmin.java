/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import context.DBContext;
import entity.Customer;
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
public class DAOAdmin {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
}