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
public class BookingDAO extends DBContext{

    Connection cnn; //Dùng để kết nối DB
    Statement stm;//Thực thi các câu lệnh SQL
    PreparedStatement pstm;
    ResultSet rs; //Lưu trữ và xử lý dữ liệu
    public BookingDAO(){
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
        try{
             String str = "SELECT * FROM bookings";
             pstm = cnn.prepareStatement(str);
             rs = pstm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int customerId = rs.getInt("customer_Id");
                String roomType = rs.getString("room_type");  
                Date checkInDate = rs.getDate("check_in_date");
                Date checkOutDate = rs.getDate("check_out_date");
                int roomNumber = rs.getInt("room_number");             
                Booking booking = new Booking(id, customerId, roomType, checkInDate, checkOutDate, roomNumber);              
                bookings.add(booking);
            }
        } catch (Exception e) {
            System.out.println("getListBooking" + e.getMessage());
        }
        return bookings;
    }
    
    public boolean bookings(int customerId, String roomType, Date checkInDate, Date checkOutDate, int roomNumber) {
        String sql = "INSERT INTO [dbo].[bookings]([customerId],[roomType],[checkInDate],[checkOutDate],[roomNumber])\n"
                + "     VALUES(?,?,?,?,?)";
        try {
            pstm = cnn.prepareStatement(sql);
            pstm.setInt(1, customerId);
            pstm.setString(2, roomType);
            pstm.setDate(3, checkInDate);
            pstm.setDate(4, checkOutDate);   
            pstm.setInt(5, roomNumber); 
            return pstm.executeUpdate() == 1;
        } catch (Exception e) {
            return false;
        }
    }
    
    
}
