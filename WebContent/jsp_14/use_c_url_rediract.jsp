<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url & rediract tag</title>
</head>
<body>
<!--  url 생성해주는 태그 실습-->
<h4>url을 생성해주는 태그 </h4>
<!-- https://www.daum.net/search?w=blog&q=공원--> <!--이 url을 생성해주는실습임 -->
<c:url value="https://www.daum.net/search" var="searchUrl" >
<c:param name="w" value="blog"/>
<c:param name="q" value="공원"/>

</c:url>
${searchUrl }
<c:redirect url="${seachUrl }"/>
<hr>
<c:url value="/use_c_url.jsp"/> <!-- 절대경로 -->
<br>
<c:url value="./use_c_url.jsp"/> <!-- 상대경로 -->

</body>
</html>