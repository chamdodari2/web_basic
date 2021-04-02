<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forToken tag</title>
</head>
<body>
<%-- <pre>
<c:forToken var="token" items="문자열" delims="구분자">
${token }의 사용
</c:forToken>
</pre> --%>


<!-- 토큰  실습!  -->
<c:set var="str" value="red,green,blue" /> <!-- 한개 꺼내와서 ,로 구분해서 잘라서 다음토큰으로 넘겨준후 출력  각 red,green,blue 출력-->
<c:forTokens var="token" items="${str }" delims=",">
${token }<br>
</c:forTokens>
<hr>
<!--  -->
<c:forTokens var="token" items="빨강색,주황색,노랑색.초록색,파랑색.보라색" delims=",."> <!-- ,. 모두 구분해달라! -->
${token }<br>
</c:forTokens>
<hr>
</body>
</html>