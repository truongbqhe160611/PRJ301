
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import dal.User;

/**
 *
 * @author HieuPM
 */
public class Login1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // nhap thong tin 
        String account = req.getParameter("account");
        String passWord = req.getParameter("passWord");
        //xu ly thong tin
        User u = new User(account, passWord);
        boolean check = u.checkUser();
        //tra ket qua ve
        req.setAttribute("getAccount", account);
        if (check) {      
            req.getRequestDispatcher("WeekTimeTable.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("Login.jsp");
    }

}
