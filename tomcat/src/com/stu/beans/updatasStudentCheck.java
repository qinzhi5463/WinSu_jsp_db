package com.stu.beans;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class updatasStudentCheck {
    public updatasStudentCheck(String studentNumber, String studentName, String studentSex, String studentAge, String studentWeight) {

        Connection conn = null;
        try {
            conn = DBGet.getConnection();
            Statement stmt = conn.createStatement();
            String sql="update stu set stuName='" + studentName + "',stuSex='" + studentSex + "',stuAge=" + studentAge + ",stuWeight=" + studentWeight + " where stuID='" + studentNumber + "'";
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println(e + " - addStudentCheck");
        } finally {
            DBGet.closeConnection(conn);
        }

    }
}
