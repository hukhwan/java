<%@ page import="java.io.PrintWriter"%>
<%@ page import="dash.taskDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="tasks" class="dash.tasks" scope="page" />
<jsp:setProperty name="tasks" property="dashCheck" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>

<%
taskDAO taskDAO = new taskDAO();
int result = taskDAO.checked(tasks.getDashCheck());	
%>


</body>
</html>