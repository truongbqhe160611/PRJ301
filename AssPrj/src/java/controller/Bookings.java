/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import Model.Booking;
import dal.AccountDAO;
import dal.BookingDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author tr498
 */
public class Bookings extends HttpServlet {

   private AccountDAO dao = new AccountDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Room_Booked.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {           
            String customerId = request.getParameter("customerId");
            String roomType = request.getParameter("roomType");
            String checkInDate = request.getParameter("checkInDate");  
            String checkOutDate = request.getParameter("checkOutDate");   
            String roomNumber = request.getParameter("roomNumber");   
             dao.register(customerId, roomType, checkInDate,checkOutDate,roomNumber);
            request.getRequestDispatcher("Home.jsp").forward(request, response);

        } catch (Exception e) {
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
