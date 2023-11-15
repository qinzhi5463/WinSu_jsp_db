<%@page import="java.sql.*"%>
<%@page import="com.stu.beans.updatasStudentCheck"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数据处理页面</title>
</head>
<body bgcolor="CCCFFF">
<center>
    <%
        String studentNumber=request.getParameter("studentNumber");
        String studentName=request.getParameter("studentName");
        String studentSex=request.getParameter("studentSex");
        String studentAge=request.getParameter("studentAge");
        String studentWeight=request.getParameter("studentWeight");

        out.print("学号"+studentNumber);
        out.print("姓名"+studentName);
        out.print("性别"+studentSex);
        out.print("年龄："+studentAge);
        out.print("体重："+studentWeight);

        updatasStudentCheck uS=new updatasStudentCheck(studentNumber, studentName, studentSex, studentAge,studentWeight);
    %>
    <br><br><br>
    <h2>修改学生信息</h2><br>
    <p>
        <br>
        学生信息已经修改成功!
    </p>
    <form action="lookStudent.jsp" method="post">
        <input type="submit" value="返回">
    </form>
</center>
</body>
</html>
