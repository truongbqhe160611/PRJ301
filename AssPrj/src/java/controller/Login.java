package controller;


import Model.Account;
import dal.AccountDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
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
            String remember = req.getParameter("remember");
            
//          create Cookies
            Cookie ce = new Cookie("cemail",email);
            Cookie cp = new Cookie("cpass",password);
            Cookie cr = new Cookie("cremember",remember);
            if(remember != null){
                ce.setMaxAge(24*60*60); //1 day
                cp.setMaxAge(24*60*60);
                cr.setMaxAge(24*60*60); 
            }else{
                ce.setMaxAge(0); //delete cookies
                cp.setMaxAge(0);
                cr.setMaxAge(0); 
            }
            //save as browser
            resp.addCookie(ce);
            resp.addCookie(cp);
            resp.addCookie(cr);
       
        AccountDAO accountDAO = new AccountDAO();
        Account a = accountDAO.checkAccountt(email, password);
        if(a!=null){
            HttpSession session = req.getSession();
            session.setAttribute("account", a);
            req.getRequestDispatcher("/Home.jsp").forward(req, resp);
        }
//        boolean check = accountDAO.checkAccount(email, password);
//        if (check) {
//            HttpSession session = req.getSession();
//            session.setAttribute("email", email);
//            session.setAttribute("password",password);
//            req.getRequestDispatcher("/Home.jsp").forward(req, resp);
//        }
        resp.sendRedirect(req.getContextPath() + "/login.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "/login.jsp":
                req.getRequestDispatcher("login.jsp").forward(req, resp);
                break;
            default:
                throw new AssertionError();
        }
    }
}
//    private AccountDAO dao = new AccountDAO(); 
//    @Override
//protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//    String action = req.getParameter("action");
//
//    if ("login".equals(action)) {
//        String email = req.getParameter("email");
//        String password = req.getParameter("password");
//        AccountDAO accountDAO = new AccountDAO();
//        boolean check = accountDAO.checkAccount(email, password);
//        if (check) {
//            HttpSession session = req.getSession();
//            session.setAttribute("email", email);
//            req.getRequestDispatcher("/Home.jsp").forward(req, resp);
//        } else {
//            resp.sendRedirect(req.getContextPath() + "/login.jsp");
//        }
//    } else if ("register".equals(action)) {
//        try {
//            String name = req.getParameter("name");
//            String email = req.getParameter("email");
//            String password = req.getParameter("password");           
//            dao.register(name,email, password);
//            req.getRequestDispatcher("/login.jsp").forward(req, resp);
//        } catch (Exception e) {
//            e.printStackTrace();
//            resp.sendRedirect(req.getContextPath() + "/login.jsp");
//        }
//    }
//}
//       
//}
