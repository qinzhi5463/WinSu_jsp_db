<%@page import="com.stu.beans.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学生信息查询</title>
</head>
<body bgcolor="CCCFFF">
<jsp:useBean id="stu" class="com.stu.beans.Student" />
<jsp:useBean id="stuDao" class="com.stu.beans.StuDao" />
<center>
    <%
        ArrayList<Student> list = stuDao.getstudentdb();
    %>
    <br> <br> <br> <br> <br>
    你要查询的学生数据表中共有
    <font size="5" color="red">
        <%= list.size()%>
    </font>
    人
    <table border="2" bgcolor="CCCEEE" width="600">
        <tr bgcolor="CCCCCC" align="center">
            <th>记录条数</th>
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>体重</th>
        </tr>
        <%
            int i;
            for (i = 0; i < list.size(); i++) {
                stu = list.get(i);


        %>
        <tr align="center">
            <td><%= i+1%>
            </td>
            <td><%=stu.getStudentNumber()%>
            </td>
            <td><%=stu.getStudentName()%>
            </td>
            <td><%=stu.getStudentSex()%>
            </td>
            <td><%=stu.getStudentAge()%>
            </td>
            <td><%=stu.getStudentWeight()%>
            </td>
        </tr>
        <%
            }
        %>

    </table>
</center>
</body>
</html>
