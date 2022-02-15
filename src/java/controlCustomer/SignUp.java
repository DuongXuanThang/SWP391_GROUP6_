/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlCustomer;

import dao.DAO;
import entity.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duong Xuan Thang
 */
@WebServlet(name = "SignUp", urlPatterns = {"/SignUp"})
public class SignUp extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
       String username = request.getParameter("user");
       String fullname = request.getParameter("name");
       String email = request.getParameter("email");
       String phone = request.getParameter("phone");
       String password = request.getParameter("pass");
       String repassword = request.getParameter("repass");
       if(!password.equals(repassword)){
           request.setAttribute("message", "!Wrong Password or Repassword");
           request.getRequestDispatcher("Login.jsp").forward(request, response);
       }else{
           DAO dao = new DAO();
           Customer c = dao.CheckAccountSignUp(username);
           if(c == null){
               dao.signup(fullname, email, phone, username, password);
               response.sendRedirect("Login.jsp");
           }else
           { 
               request.setAttribute("message2", "!Tên đăng nhập đã được đăng kí");
               request.setAttribute("fullname",fullname );
               request.setAttribute("email",email );
               request.setAttribute("phone",phone );
               
               request.getRequestDispatcher("Signup.jsp").forward(request, response);
           }
       }
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
        processRequest(request, response);
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
