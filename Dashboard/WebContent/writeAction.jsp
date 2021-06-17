<%@ page import="java.io.PrintWriter"%>
<%@ page import="dash.taskDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="tasks" class="dash.tasks" scope="page" />
<jsp:setProperty name="tasks" property="dashTitle" />
<jsp:setProperty name="tasks" property="dashContent" />
<jsp:setProperty name="tasks" property="dashDifficulty" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>

<%

	// 입력이 안 된 부분이 있는지 체크한다
	if(tasks.getDashTitle() == null || tasks.getDashContent() == null || tasks.getDashDifficulty() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		// 정상적으로 입력이 되었다면 글쓰기 로직을 수행한다
		taskDAO taskDAO = new taskDAO();
		int result = taskDAO.write(tasks.getDashTitle(), tasks.getDashContent(), tasks.getDashDifficulty());
		// 데이터베이스 오류인 경우
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패했습니다')");
			script.println("history.back()");
			script.println("</script>");
		// 글쓰기가 정상적으로 실행되면 알림창을 띄우고 게시판 메인으로 이동한다
		}else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기 성공')");
			script.println("location.href='dashtaskpage.jsp'");
			script.println("</script>");
		}
	}


%>


</body>
</html>