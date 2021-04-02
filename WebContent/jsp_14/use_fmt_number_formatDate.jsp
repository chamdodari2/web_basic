<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numberFormat formatDate</title>
</head>
<body>

<!-- 숫자가 ,로 구분된당 -->
<c:set var="price" value="10000" />

<fmt:formatNumber value="${price }" type="number" var="numberType"/> 
<br>
통화기호 : <fmt:formatNumber value="${price }" type="currency" currencySymbol="원" /> 
<br>
퍼센트 기호 : <fmt:formatNumber value="${price }" type="percent" groupingUsed="fales" /> 
<br>
숫자 기호 : ${numberType }
<br>
패턴1 : <fmt:formatNumber value="${price }" pattern="00000000.00" /><!--  앞에 0000같이보여주기 -->
<br>
패턴2 : <fmt:formatNumber value="${price }" pattern="#.00" /> <!-- 의미없는 숫자는 빼고 보여주기 -->
<br>
패턴3 : <fmt:formatNumber value="${price }" pattern="\#,###.00 원" /> <!-- 자릿수 지정  + 통화기호 보여주기-->
<!-- 실습2 -->
<h3> 문자를 숫자로 변경 </h3>
<c:set var="strPrice" value="100000"> </c:set>
패턴4 : <fmt:parseNumber value="${strPrice }" /> <br><!-- 자릿수 지정  + 통화기호 보여주기-->
패턴5 : <fmt:parseNumber value="100,000" pattern="#,###.00" /> <br><!-- 자릿수 지정  + 통화기호 보여주기-->

<!--  날짜 표시 실습-->

<h3>날짜 표시</h3>
<c:set var="now" value="<%=new Date() %>" />
${now }<br>
<fmt:formatDate value="${now }" type="date" dateStyle="full" /><br>
<fmt:formatDate value="${now }" type="date" dateStyle="short" /><br>
<fmt:formatDate value="${now }" type="time" /><br>
<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" /><br>
<fmt:formatDate value="${now }" pattern="z a h:mm"/><br>
<fmt:formatDate value="${now }" pattern="yyyy-mm-dd a h:mm"/><br>

<!--  함수태그 -->
</body>
</html>