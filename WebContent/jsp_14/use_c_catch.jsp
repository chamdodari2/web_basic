<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>catch tag</title>
</head>
<body>
	<!-- null값과 같으면 공백으로 출력되버린다 -->
	name 파라미터 값 =
	<%=request.getParameter("name")%><br>
	<c:catch var="e">
		<!-- try catch에서 처럼 익셉션 e로 받는것 -->
		<%if (request.getParameter("name").equals("test")){ %>
		name 파라미터 값은 test<br>
		<% } %>
	</c:catch>
	${e }
	<p>
		<c:if test="${e eq 'java.lang.NullPointerException'}">
익셉션이 발생 : <br>
			<!-- 왜안됑..? 에러페이지안뜬당  널이 아니라 공백으로된서 그런가봉! c:대신  하드코딩쓰로 하면 된당-->
		</c:if>
</body>
</html>