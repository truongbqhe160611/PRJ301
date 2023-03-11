package controller;


import dal.AccountDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author tr498
 */
public class Login extends HttpServlet{
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        AccountDAO accountDAO = new AccountDAO();
        boolean check = accountDAO.checkAccount(email, password);
        if (check) {
            HttpSession session = req.getSession();
            session.setAttribute("email", email);
            req.getRequestDispatcher("/Home.jsp").forward(req, resp);
        }
        resp.sendRedirect(req.getContextPath() + "/Home.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "login.jsp":
                req.getRequestDispatcher("login.jsp").forward(req, resp);
                break;
            default:
                throw new AssertionError();
        }
    }
    
    
}
