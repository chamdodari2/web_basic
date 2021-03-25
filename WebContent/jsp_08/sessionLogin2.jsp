<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%session.setAttribute("id",request.getParameter("id")); %>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
</head>
<body>
<h3>로그인되었습니다.</h3>
<h3>로그인아이디 : <%=(String)session.getAttribute("id") %></h3>
<a href="sessionLogout.jsp">로그아웃</a>

</body>
</html>