/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Booking;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tr498
 */
public class BookingDAO extends DBContext {

    Connection cnn; //Dùng để kết nối DB
    Statement stm;//Thực thi các câu lệnh SQL
    PreparedStatement pstm;
    ResultSet rs; //Lưu trữ và xử lý dữ liệu

    public BookingDAO() {
        connect();
    }

    public void connect() {
        try {
            cnn = super.connection;
            if (cnn != null) {
                System.out.println("Connect success");
            }
        } catch (Exception e) {
            System.out.println("Connect fail:" + e.getMessage());
        }
    }

    public List<Booking> getAllBookings() {
        List<Booking> bookings = new ArrayList<>();
        try {
            String str = "SELECT * FROM bookings";
            pstm = cnn.prepareStatement(str);
            rs = pstm.executeQuery();
            while (rs.next()) {
                int customerId = rs.getInt("customer_id");
                int roomId = rs.getInt("room_id");
                String name = rs.getString("name");
                String roomType = rs.getString("room_type");
                int roomNumber = rs.getInt("room_number");
                Date checkInDate = rs.getDate("check_in");
                Date checkOutDate = rs.getDate("check_out");
                Booking booking = new Booking(customerId, roomId, name, roomType, roomNumber, checkInDate, checkOutDate);
                bookings.add(booking);
            }
        } catch (Exception e) {
            System.out.println("getListBooking" + e.getMessage());
        }
        return bookings;
    }

    public boolean bookings(String customerId, String roomId, String name, String roomType, String roomNumber, String checkInDate, String checkOutDate) {
        String sql = "INSERT INTO [dbo].[bookings]([customer_id],[room_id],[name],[room_type],[room_number],[check_in],[check_out])\n"
                + "     VALUES(?,?,?,?,?,?,?)";
        try {
            pstm = cnn.prepareStatement(sql);
            pstm.setInt(1, Integer.parseInt(customerId));
            pstm.setInt(2, Integer.parseInt(roomId));
            pstm.setString(3, name);
            pstm.setString(4, roomType);
            pstm.setInt(5, Integer.parseInt(roomNumber));
            pstm.setDate(6, Date.valueOf(checkInDate));
            pstm.setDate(7, Date.valueOf(checkOutDate));
            return pstm.executeUpdate() == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public void deleteBooked(String customerId) {
        String sql= "delete from bookings \n"
                + "where customer_id = ?";
        try {
            cnn = super.connection;
            pstm = cnn.prepareStatement(sql);
            pstm.setString(1, customerId);
            pstm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Booking getCustomerId(String customerId) {
        String query = "select *from bookings \n"
                + "where customer_id = ?";
        try {
            cnn = super.connection;
            pstm = cnn.prepareStatement(query);
            pstm.setString(1, customerId);
            rs = pstm.executeQuery();
            while(rs.next()){
                return new Booking(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getDate(6),
                        rs.getDate(7));
            }
        }catch(Exception e){
    }
        return null;

}
}
