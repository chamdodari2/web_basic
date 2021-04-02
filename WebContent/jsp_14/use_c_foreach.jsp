<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Map으로 실습 -->
<%
  Map<String, Object> mapData = new HashMap<>();
  mapData.put("name","김상건");
  mapData.put("toDay",new Date());
%>

<c:set var="intArray" value="<%=new Integer[]{1,2,3,4,5} %>" />
<c:set var="map" value="<%=mapData %>" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
<h4>1부터 100까지의 합</h4>
<c:set var="sum" value="0"/>   <!-- sum 변수 선언과 같다. -->
<c:forEach var="i" begin="0" end="100" step="2"> <!-- i 가 1부터 100까지  중 짝수 -->
	<c:set var = "sum">${sum+i } </c:set> <!-- 처음에 0에다가 점점 추가쓰 -->
</c:forEach>
결과 = ${sum }


</body>
</html>