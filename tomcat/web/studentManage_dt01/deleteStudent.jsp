
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生信息删除</title>
    </head>
   <body bgcolor="CCCFFF">
       <%
           Class.forName("com.mysql.jdbc.Driver");
           String url="jdbc:mysql://localhost:3306/db01";
           String user="root";
           String password="123456";
           Connection conn= DriverManager.getConnection(url,user,password);
           Statement stmt=conn.createStatement();
        %>
        <center>
            <br><br><br>
            <br><br><br>
            <h2>删除学生信息</h2><br>
            <form action="deleteStudentCheck.jsp" method="post">
                <p>请选择要删除学生的学号:
                    <select name="id">
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
                </p>
                 <p>
                    <input type="submit"  value="确定">&nbsp;
                    <input  type="button"  value="返回" onClick="javascript:history.go(-1)">
                </p>
            </form>
        </center>
    </body>
</html>

