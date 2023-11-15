
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生信息修改</title>
    </head>


    <body bgcolor="CCCFFF">
    <center>
        <br><br><br>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/db01";
            String user="root";
            String password="123456";
            Connection conn= DriverManager.getConnection(url,user,password);
            Statement stmt=conn.createStatement();
        %>

        <br><br>
        <h2>修改学生信息</h2>
        <br>
        <form action="updatasStudentCheck.jsp" method="post">

            <p>请选择要修改学生的学号:
                <select name="studentNumber">
                    <%
                        ResultSet rs = stmt.executeQuery("select * from stu");
                        while(rs.next()){
                            String SNo=rs.getString("stuID");
                    %>
                    <option value="<%=SNo%>"><%=SNo%></option>
                    <%
                        }
                    %>
                </select>
            <table border="0" width="200">

                <tr>
                    <td>姓名</td>
                    <td><input type="text" name="studentName" ></td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td><input type="text" name="studentSex" ></td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td><input type="text" name="studentAge" ></td>
                </tr>
                <tr>
                    <td>体重</td>
                    <td><input type="text" name="studentWeight" ></td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input name="sure" type="submit" value="提  交">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="clear" type="reset" value="取  消">
                    </td>
                </tr>
            </table>
        </form>
        <%

            rs.close();
            stmt.close();
            conn.close();
        %>
    </center>
    </body>
</html>
