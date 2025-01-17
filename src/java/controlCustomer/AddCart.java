/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlCustomer;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import dao.DAO;
import entity.Cart;
import entity.Item;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Duong Xuan Thang
 */
@WebServlet(name = "AddCart", urlPatterns = {"/AddCart"})
public class AddCart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("pid");
        String tnum = request.getParameter("num");
       
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        Cart cart= null ;
        Object o = session.getAttribute("cart");
        // co roi
        if(o!=null){
            cart = (Cart) o;
            
        }else{
            //chua co
            cart = new Cart();
        }
        
        
        int num = Integer.parseInt(tnum);
        
        DAO dao = new DAO();
        Product p = dao.getProductbyId(id);
        if(num > p.getQuantity()){
             request.setAttribute("mesage1", "Thêm sản phẩm không thành công! Số lượng đặt hàng quá giới hạn");
              session.setAttribute("cart", cart);
        //session.setAttribute("size", list.size());
        request.setAttribute("detail", p);
        session.setAttribute("totalMoney", cart.getTotalMoney());
        request.getRequestDispatcher("Detail.jsp").forward(request, response);
             request.getRequestDispatcher("Detail.jsp").forward(request, response);
        }else{
        try {
           // double price = p.getPrice()*1.2;
            Item t = new Item(p,num,p.getPrice());
            cart.addItem(t);
            //add vao gio thanh cong
        } catch (Exception e) {
            num =1;
        }
        List<Item> list = cart.getItems();
         request.setAttribute("mesage", "Thêm sản phẩm váo giỏ hàng thành công");
       
        session.setAttribute("cart", cart);
        session.setAttribute("size", list.size());
        request.setAttribute("detail", p);
        session.setAttribute("totalMoney", cart.getTotalMoney());
        request.getRequestDispatcher("Detail.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
