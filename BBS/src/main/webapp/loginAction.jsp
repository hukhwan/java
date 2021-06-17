<%@ page import="java.io.PrintWriter"%>
<%@ page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 넘어온 데이터 한글깨짐 방지 -->
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트 - loginAction</title>
</head>
<body>
	<% 
		//현재 세션체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		//이미 로그인 했으면 다시 로그인 할수 없게된다.
		if(userID != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어 있습니다.')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}	
		UserDAO userDAO = new UserDAO();  //UserDAO 클래스 인스턴스 'userDAO'를 생성합니다
		//int타입 변수 'result'에 'userDAO'인스턴스 클래스의 'login'메소드의 실행 결과를 저장한다. 이 때 'login'메소드의 매개변수는 실제 브라우저에서 사용자가 입력한 아이디와 비밀번호를 넣어 적용시킵니다.
		int result = userDAO.login(user.getUserID(), user.getUserPassword()); //userDAO의 login메소드 시작. 그리고 그값을 result에 저장.
		if(result == 1){
			session.setAttribute("userID", user.getUserID());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>

</body>
</html>