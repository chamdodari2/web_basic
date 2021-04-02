<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose 태그</title>
</head>
<body>
<c:choose>
	<c:when test="${param.name eq 'ksk' }"><!-- 주소창에 적힌 name 값이 ksk과 같다면  아래내용 출력-->	
	당신의 이름은 김상건 입니다.
	</c:when>  
	<c:when test="${param.name eq 'lny' }"><!-- 주소창에 적힌 name 값이 lny과 같다면  아래내용 출력-->	
	당신의 이름은 이나연 입니다.
	</c:when>  
	<c:otherwise> <!-- 그외 사람은 이태훈으로 출력 else와 같은것같다 -->
	당신의 이름은 이태훈 입니다.
	</c:otherwise>
</c:choose>
</body>
</html>