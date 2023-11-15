
<%@page import="java.sql.*"%>
<%@page import="com.stu.beans.addStudentCheck"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>数据处理页面</title>
    </head>
    <body bgcolor="CCCFFF">
            <%
                String studentNumber=request.getParameter("studentNumber");
                String studentName=request.getParameter("studentName");
                String studentSex=request.getParameter("studentSex");
                String studentAge=request.getParameter("studentAge");
                String studentWeight=request.getParameter("studentWeight");
//                Class.forName("com.mysql.jdbc.Driver");
//                String url="jdbc:mysql://localhost:3306/db01";
//                String user="root";
//                String password="123456";
//                Connection conn= DriverManager.getConnection(url,user,password);
//                Statement stmt=conn.createStatement();
//                String sql = "INSERT INTO stu (stuId, stuName, stuSex, stuAge, stuWeight) VALUES ('" + studentNumber + "', '" + studentName + "', '" + studentSex + "', " + studentAge + ", " + studentWeight + ")";
//               // String sql = "INSERT INTO stu (stuId,stuName, stuSex, stuAge, stuWeight) VALUES (studentNumber, studentName, studentSex, studentAge,studentWeight)";
//                //String sql="insert into stu values('"+studentNumber+"','"+studentName+"','"+studentSex+"',"+studentAge+","+studentWeight+")";
//                stmt.executeUpdate(sql);
//                stmt.close();
//                conn.close();
                addStudentCheck as=new addStudentCheck();
                as.addStu(studentNumber, studentName, studentSex, studentAge,studentWeight);


            %>
        <center>
            <h2 >添加学生信息</h2>
            <p>
                <br>
                新的数据已经添加到数据库中!
            </p>
            <form action="lookStudent.jsp" method="post">
                <input type="submit" value="返回">
           </form>
        </center>
    </body>
</html>
