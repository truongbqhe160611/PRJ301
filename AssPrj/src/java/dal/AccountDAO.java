/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author tr498
 */
public class AccountDAO extends DBContext {
    Connection cnn; //Dùng để kết nối DB
    Statement stm;//Thực thi các câu lệnh SQL
    PreparedStatement pstm;
    ResultSet rs; //Lưu trữ và xử lý dữ liệu

    public AccountDAO() {
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

    public boolean checkAccount(String email, String password) {
        try {
            String strSelect = "select * from customers "
                    + "where email=? and "
                    + "password=? ";

            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, email);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkAccount:" + e.getMessage());
        }
        return false;
    }
    public Account checkAccountt(String email, String password) {
        try {
            String strSelect = "SELECT [id]\n"
                    + "      ,[name]\n"
                    + "      ,[email]\n"
                    + "      ,[password]\n"
                    + "      ,[phone]\n"
                    + "      ,[address]\n"
                    + "  FROM [dbo].[customers]\n"
                    + "  where email = ? and [password] = ?";

            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, email);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt("id"),rs.getString("name"), rs.getString("email"), rs.getString("password"), rs.getString("phone"), rs.getString("address"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println("checkAccount:" + e.getMessage());
        }
        return null;
    }
    
    
     public boolean register(String name,String email, String password,String phone, String address) {
        String sql = "INSERT INTO [dbo].[customers]([name],[email],[password],[phone],[address])\n"
                + "     VALUES(?,?,?,?,?)";
        try {
            pstm = cnn.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, email);
            pstm.setString(3, password);
            pstm.setString(4, phone);   
            pstm.setString(5, address); 
            return pstm.executeUpdate() == 1;
        } catch (Exception e) {
            return false;
        }
    }
     
     public static void main(String[] args) {
        AccountDAO aDao = new AccountDAO();
        String email = "truongbq@gmail.com";
        String pass = "12345";
        Account a = new Account();
        a.setEmail(email);
        a.setPassword(pass);
        aDao.checkAccountt(email, pass);
         System.out.println(a);
    }
    
}
