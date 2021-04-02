<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fn tag</title>
</head>
<body>

<!--  문자열의 길이 확인하기 (length처럼) -->
	<c:set var="str1" value="Functions <태그>를 사용합니다. " />
	<c:set var="str2" value="사용"/>
	<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />
	
	length(str1) = ${fn:length(str1) }<br>
	<!-- 대문자로 전환하기 -->
	toUpperCaes(str1) = ${fn:toUpperCase(str1)}<br>
	<!-- 소문자로 전환하기 -->
	toLowerCaes(str1) = ${fn:toLowerCase(str1)}<br>
	<!-- 한글자씩 잘라서 가져오기 -->
	subString(str1,3,6) = ${fn:substring(str1,3,6) }<br>
	<!-- 공백제거 -->
	trim(str1) = ${fn:trim(str1) } - ${fn:length(fn:trim(str1)) }<br>
	
	
	<!-- 교체 -->
	replace(str1, src, dest) =${fn:replace(str1, " ", "-" }<br>
	<!-- 해당 글자가 있는 위치 찾기 -->
	indexOf(str1, str2) =${fn:indexOf(str1, str2)}<br>
	<hr>
	startsWith(str1,str2) =${fn:startsWith(str1,'Fun' }<br>
	endsWith(str1,str2) =${fn:endsWith(str1, '합니다.')}<br>
	<!-- 포함되고있느냐 -->
	contains(str1,str2) =${fn:contains(str1,str2) }<br>
	conteinsIgnoreCase(str1,str2) =${fn:containsIgnoreCase(str1,'funtion') }<br>
	
</body>
</html>