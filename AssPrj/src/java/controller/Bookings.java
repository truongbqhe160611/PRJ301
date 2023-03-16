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

   private BookingDAO dao = new BookingDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Room_Booking.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String customerId = request.getParameter("customerId");
            String roomId = request.getParameter("roomId");
            String name = request.getParameter("name");
            String roomType = request.getParameter("roomType");
            String roomNumber = request.getParameter("roomNumber");
            String checkInDate = request.getParameter("checkInDate");  
            String checkOutDate = request.getParameter("checkOutDate");
            dao.bookings(customerId,roomId,name, roomType, roomNumber, checkInDate, checkOutDate);
            request.getRequestDispatcher("Home.jsp").forward(request, response);

        } catch (Exception e) {
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
