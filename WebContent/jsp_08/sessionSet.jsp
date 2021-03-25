<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
session.setMaxInactiveInterval(60*5);
session.setAttribute("name", "Session Test!"); 
session.setAttribute("id", "Session id"); 
session.setMaxInactiveInterval(60*5);  //세션 유지시간은 5분으로
%>
<script>
 location.href="sessionTest.jsp";
</script>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>