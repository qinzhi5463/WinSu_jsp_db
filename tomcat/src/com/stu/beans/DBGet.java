package com.stu.beans;

import java.sql.*;

public class DBGet {
    static String sDBDriver = "com.mysql.jdbc.Driver";
    static String sConnStr = "jdbc:mysql://localhost:3306/db01";
    static String username = "root";
    static String password = "123456";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(sDBDriver);
            conn = DriverManager.getConnection(sConnStr, username, password);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage() + "stu");
        }
        return conn;
    }

    public static void closeConnection(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}