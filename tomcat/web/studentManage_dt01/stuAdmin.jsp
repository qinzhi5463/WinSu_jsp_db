<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@ page import="com.stu.beans.Student" %>
<%@ page import="com.stu.beans.DBGet" %>
<%@ page import="com.stu.beans.StuDao" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学生信息管理系统</title>
</head>
<frameset rows="90,*">
    <frame src="top.jsp" scrolling="no">
    <frameset cols="126,*">
        <frame src="left.jsp" scrolling="no">
        <frame src="bottom.jsp" name="main" scrolling="no">
        </frameset>
    </frameset>
</html>

