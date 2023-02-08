/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author FPT University - PRJ301
 */
public class DBContext {

    protected Connection connection;

    public DBContext() {
        try {
            String user = "truong";
            String pass = "123456789";
            String url = "jdbc:sqlserver://DESKTOP-FQ5NO5A\\SQLEXPRESS:1433;databaseName=master [truong on TRUONG]";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Kiem tra ket noi toi CSDL
    public static void main(String[] args) {
        System.out.println(new DBContext().connection);
    }
}
