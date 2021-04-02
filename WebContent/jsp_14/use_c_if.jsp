<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if tag</title>
</head>
<body>
<!-- if 실습  -->
<c:if test="true" > <!--true/false가 와야하는디 트루가 오면 수행한다  -->
무조건 수행
</c:if>
<hr>
param.name = ${param.name }<br>
param.age = ${param.age } <br> <!-- 파라미터에 있는 내용쓰  출력-->

<c:if test="${param.name =='ksk' }"><br>
name 파라미터의 값이 ${param.name } 입니다.

 </c:if>
 <hr>
 <c:if test="${param.name eq 'ksk' }"><br> <!-- = 등호 대신 eq 써도된다 -->
name 파라미터의 값이 ${param.name } 입니다.
 </c:if>
 <br>
  <c:if test="${18<param.age }"><br>  <!-- 주소창에 있는 숫자를 19 이상으로 바꾸면 아래 내용이 뜨게 된다. -->
당신의 나이는 18세 이상 입니다.
 </c:if>
</body>
</html>