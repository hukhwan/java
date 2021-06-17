<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 넘어온 데이터 한글깨짐 방지 -->
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트 - writeAction</title>
</head>
<body>
	<%
	//현재 세션체크
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	//이미 로그인 했으면 다시 로그인 할수 없게된다.
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	} else {
		if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			//로직 수행
			BbsDAO bbsDAO = new BbsDAO();
			int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
			//데이터베이스 오류인 경우
			if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글쓰기에 실패했습니다.')");
		script.println("history.back()");
		script.println("</script>");
			} else{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글쓰기 성공')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
			}
		}
	}
	%>

</body>
</html>