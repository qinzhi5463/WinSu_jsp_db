
package com.stu.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class StuDao {
    public ArrayList<Student> getstudentdb() {
        ArrayList<Student> students = new ArrayList<>();
        Connection conn = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            Statement stmt = conn.createStatement();
            String sql = "select * from stu";
            rs = stmt.executeQuery(sql);
            //rs.last();
            while (rs.next()) {
                String id = rs.getString("stuId");
                String name = rs.getString("stuName");
                String sex = rs.getString("stuSex");
                String age = rs.getString("stuAge");
                String weight = rs.getString("stuWeight");
                Student student = new Student(id, name, sex, age, weight);
                students.add(student);
            }
        } catch (SQLException el) {
            System.out.println(el + "StuDao");
        } finally {
            DBGet.closeConnection(conn);
        }

        return students;
    }
}
