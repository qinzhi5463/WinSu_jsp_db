package com.stu.beans;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class deleteStudentCheck {
    public deleteStudentCheck(String id) {

        Connection conn = null;
        try {
            conn = DBGet.getConnection();
            Statement stmt = conn.createStatement();
            String sql="delete  from stu where stuId="+id;
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println(e + " - addStudentCheck");
        } finally {
            DBGet.closeConnection(conn);
        }

    }
}
