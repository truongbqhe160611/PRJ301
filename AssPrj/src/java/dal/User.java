/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dal.DBContext;
import com.sun.org.apache.bcel.internal.generic.AALOAD;
import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author HieuPM
 */
public class User extends DBContext {

    private int account_id, student_id, professor_id;
    private String email, password, is_student, is_professor;
    //tao cac thanh phan xu ly DB
    Connection cnn; //dung de ket noi DB
    Statement stm;//thuc thi cac cau lenh SQL
    PreparedStatement pstm;
    ResultSet rs;//luu tru va xu ly du lieu 

    public User() {
        connect();
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
        connect();
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public int getProfessor_id() {
        return professor_id;
    }

    public void setProfessor_id(int professor_id) {
        this.professor_id = professor_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIs_student() {
        return is_student;
    }

    public void setIs_student(String is_student) {
        this.is_student = is_student;
    }

    public String getIs_professor() {
        return is_professor;
    }

    public void setIs_professor(String is_professor) {
        this.is_professor = is_professor;
    }

    public void connect() {
        try {
            cnn = super.connection;
            if (cnn != null) {
                System.out.println("Connect succesful");
            }
        } catch (Exception e) {
            System.out.println("Connect fail: " + e.getMessage());
        }
    }

    public boolean checkUser() {
        try {
            String str = "select * from ScheduleReal where email=? and password=? ";
            pstm = cnn.prepareStatement(str);
            pstm.setString(1, email);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public void getUser(String account) {
        try {
            String str = "select * from ScheduleReal where email =? ";
            pstm = cnn.prepareStatement(str);
            pstm.setString(1, account);
            rs = pstm.executeQuery();
            if (rs.next()) {
                account_id = rs.getInt(1);
                email = rs.getString(2);
                password = rs.getString(3);
                is_student = rs.getString(4);
                is_professor = rs.getString(5);
                student_id = rs.getInt(6);
                professor_id = rs.getInt(7);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
