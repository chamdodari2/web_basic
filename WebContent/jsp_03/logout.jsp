<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%
	session.invalidate();  //세션 삭제!  ( 로그아웃!)  서블릿으로 작업해도 되는데 굳이 만들필요 없어서 여 기서 작업해봤당!!
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	로그아웃 하였습니다.<br>
	<a href="login.jsp">로그인</a> 
</body>
</html>