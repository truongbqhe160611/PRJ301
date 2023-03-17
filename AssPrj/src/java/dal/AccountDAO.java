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
import java.util.ArrayList;
import java.util.List;

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
        } catch (SQLException e) {
            System.out.println("checkAccount:" + e.getMessage());
        }
        return false;
    }

    public Account checkAccountt(String email, String password) {
        try {
            String strSelect = "SELECT [id]\n"
                    + "      ,[isAdmin]\n"
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
                Account a = new Account(rs.getInt("id"), rs.getInt("isAdmin"), rs.getString("name"), rs.getString("email"), rs.getString("password"), rs.getString("phone"), rs.getString("address"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println("checkAccount:" + e.getMessage());
        }
        return null;
    }

    public Account checkAccounttByEmail(String email) {
        try {
            String strSelect = "SELECT [id]\n"
                    + "      ,[isAdmin]\n"
                    + "      ,[name]\n"
                    + "      ,[email]\n"
                    + "      ,[password]\n"
                    + "      ,[phone]\n"
                    + "      ,[address]\n"
                    + "  FROM [dbo].[customers]\n"
                    + "  where email = ?";

            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, email);
            rs = pstm.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt("id"), rs.getInt("isAdmin"), rs.getString("name"), rs.getString("email"), rs.getString("password"), rs.getString("phone"), rs.getString("address"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println("checkAccount:" + e.getMessage());
        }
        return null;
    }

    public boolean register(String name, String email, String password, String phone, String address) {
        String sql = "INSERT INTO [dbo].[customers]([isAdmin],[name],[email],[password],[phone],[address])\n"
                + "     VALUES(0,?,?,?,?,?)";
        try {
            pstm = cnn.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, email);
            pstm.setString(3, password);
            pstm.setString(4, phone);
            pstm.setString(5, address);
            return pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            return false;
        }
    }

    public List<Account> getAllAccount() {
        List<Account> Acc = new ArrayList<>();
        try {
            String str = " select * from customers where isAdmin = 0";
            pstm = cnn.prepareStatement(str);
            rs = pstm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int isAdmin = rs.getInt("isAdmin");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                Account Account = new Account(id, isAdmin, name, email, password, phone, address);
                Acc.add(Account);
            }
        } catch (SQLException e) {
            System.out.println("getListAccount" + e.getMessage());
        }
        return Acc;
    }

//    public boolean checkAdmin(String email) {
//        try {
//            String sql = "select * from customers where email = ? and isAdmin = 1"
//            pstm = cnn.prepareStatement(sql);
//            pstm.setString(1, email);
//            pstm.executeQuery();
//            while(pstm.next()){
//                
//            }
//        } catch (Exception e) 
//        }

    

    public void deleteAccount(String id) {
        String sql = "delete from customers \n"
                + "where id = ?";
        try {
            cnn = super.connection;
            pstm = cnn.prepareStatement(sql);
            pstm.setString(1, id);
            pstm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getCustomerId(String customerId) {
        String sql = "select *from customers \n"
                + "where customer_id = ?";
        try {
            cnn = super.connection;
            pstm = cnn.prepareStatement(sql);
            pstm.setString(1, customerId);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (SQLException e) {
        }
        return null;

    }

    public void updateAccount(int id, String name, String email, String password, String phone, String address) {
        String sql = " update customers \n"
                + "set {name} = ?, \n"
                + " email = ?, \n"
                + "password =?, \n"
                + "phone = ?, \n"
                + "address =? \n"
                + "where id = ?";
        try {
            cnn = super.connection;
            pstm = cnn.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, email);
            pstm.setString(3, password);
            pstm.setString(4, phone);
            pstm.setString(5, address);           
            pstm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public static void main(String[] args) {
        AccountDAO ad = new AccountDAO();
        List<Account> l = ad.getAllAccount();
        for (Account account : l) {
            System.out.println(account);
        }
    }

}
