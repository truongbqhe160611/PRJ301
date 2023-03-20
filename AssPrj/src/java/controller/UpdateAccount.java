/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Model.Account;
import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author tr498
 */
public class UpdateAccount extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            int cid = Integer.parseInt(request.getParameter("scustomerId"));
            AccountDAO account = new AccountDAO();
            Account acc = account.getCustomerId(cid);
            request.setAttribute("Aupdate", acc);
//            HttpSession session = request.getSession();
//            session.setAttribute("cid", Integer.parseInt(request.getParameter("scustomerId")));
            request.getRequestDispatcher("Update_Account.jsp").forward(request, response);
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
//        processRequest(request, response);   
//       String customerId = request.getParameter("customerId");
//        AccountDAO dao = new AccountDAO();
//        Account a = dao.getCustomerId(customerId);
//        request.setAttribute("acc", a);
//        request.getRequestDispatcher("AccountInfor.jsp").forward(request, response);
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
//        processRequest(request, response);
//       int sid = Integer.parseInt(request.getParameter("sid"));
//       String sname = request.getParameter("name");
//       String semail = request.getParameter("email");
//       String spassword = request.getParameter("password");
//       String sphone = request.getParameter("phone");
//       String saddress = request.getParameter("address");
//       AccountDAO dao = new AccountDAO();
//       dao.updateAccount(sid, sname, semail, spassword, sphone, saddress);
//       response.sendRedirect("AccountInfor.jsp");
//  
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
