<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 여기에 사용할수 있는 객체 페이지 등등 있음 -->
<%
	String id = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴화면</title>
</head>
<body>
	<%	if (id == null) { %>
	<a href="login.jsp">로그인</a>    <!-- 로그인 안했으면 로그인화면으로 이동시키기 -->
	<%	} else {%>
	<%=id%> 님 환영합니다.<br>
	<a href="logout.jsp">로그아웃</a> 
	<%	}
	%>



</body>
</html>