
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
        String u =req.getParameter("User");
  	  String p =req.getParameter("Pass");
          String a = getServletConfig().getInitParameter("taikhoan");
          String b = getServletConfig().getInitParameter("matkhau");
          
	  resp.setContentType("text/html");
     	  PrintWriter out = resp.getWriter();
          if(u.equalsIgnoreCase(a) && p.equalsIgnoreCase(b)) {
              out.println("<h1>Login Successful! " + "</h1>");
          }
          else resp.sendRedirect("login.html");
    }
    
    
}
