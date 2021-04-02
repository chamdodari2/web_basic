<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Map으로  1~100 합 실습 실습 -->
<%--
 <%
  Map<String, Object> mapData = new HashMap<>();
  mapData.put("name","김상건");
  mapData.put("toDay",new Date());
%>


<c:set var="intArray" value="<%=new Integer[]{1,2,3,4,5} %>" /> 

<c:set var="map" value="<%=mapData %>" />
 --%>

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

<!--  구구단 4단 실습 -->
<hr>
<h4>구구단 4단</h4>
<c:forEach var="i" begin="1" end="9" > <!-- step이 빠지면 무조건 1씩 증가 --> <!-- i값에 1부터 9까지  -->
	4*${i }=${4*i }<br>
</c:forEach>

<hr>
<!--int형 배열 실습  -->
<h4>int형 배열</h4>
<c:set var="intArray" value="<%=new Integer[]{1,2,3,4,5} %>" />
<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status"> <!-- 0부터 4까지-->
${status.index }<!-- 얘가 뭔지 확인해보기 -->
-${status.count } <!-- 카운트된다 -->
-${i }<br>

</c:forEach>
<hr>
<!-- 이름과 오늘 날짜 출력쓰 -->
<%
  Map<String, Object> mapData = new HashMap<>();
  mapData.put("name","김상건");
  mapData.put("toDay",new Date());
%>

<c:set var="map" value="<%=mapData %>" />
<h4>Map</h4>
<c:forEach var="i" items="${map }">
	${ i.key }= ${i.value}<br>
</c:forEach>



</body>
</html>