<%@page import="com.stu.beans.deleteStudentCheck"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>数据处理页面</title>
    </head>
    <body bgcolor="CCCFFF">
        <%
            String id=request.getParameter("id");
            deleteStudentCheck de=new deleteStudentCheck(id);
        %>
        <center>
            <h2>删除学生信息</h2>
            <p>
                <br>
                 该学生记录已经被删除!
            </p>
            <form action="lookStudent.jsp" method="post">
                <input type="submit"  value="返回">
           </form>
        </center>
    </body>
</html>
