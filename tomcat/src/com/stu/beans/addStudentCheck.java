package com.stu.beans;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


public class addStudentCheck {
    public void addStu(String studentNumber, String studentName, String studentSex, String studentAge, String studentWeight) {
        Connection conn = null;
        try {
            conn = DBGet.getConnection();
            Statement stmt = conn.createStatement();
            String sql = "INSERT INTO stu (stuId, stuName, stuSex, stuAge, stuWeight) VALUES ('" + studentNumber + "', '" + studentName + "', '" + studentSex + "', " + studentAge + ", " + studentWeight + ")";
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println(e + " - addStudentCheck");
        } finally {
            DBGet.closeConnection(conn);
        }
    }

}
