<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="web_basic.jsp_13.erp.Title"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!-- = 뒤에 띄우지말기!!! />는 띄워주기!!!   -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%Title t = new Title(); %>
 <!-- set으로  t.settNo() , t.settName() 를 이용해보는 실습 -->
<c:set target="<%=t %>" property="tNo" value="1" />
<c:set target="<%=t %>" property="tName" value="사장" />


<!-- 원래 실습은 이거! 밑으로 추가서 실습해봤다 -->
<%-- 
 <%=t.gettNo() %><br> 
 <%=t.gettName() %> 
 --%>
 
  <%=t.gettNo() %><br> 
 <c:set var ="tt" value="<%=t %>"/>
 <c:out value="${tt }"/><br> <!-- 출력(toString)하기 실습 끼워넣음 -->
 <%=t.gettName() %>
 
<hr>
<!-- 자바코드 칠떄 위의 방법이 귀찮기 때문에  $를 쓰는 아래방법(el)으로 실습 -->
<!-- title.gettNo를 의미함. 위에서 만든것을 m으로 가져오기(?) -->
<c:set var="m" value="<%=t %>" />    
직책번호 : ${m.tNo}<br>
직책 명 : ${m.tName}

<hr>
<!-- 벨류값 2번으로 바꿔서 찍어보기 실습 -->
<c:set target="${m}" property="tNo" value="2" />
<c:set target="${m}" property="tName" value="부장" />
직책번호 : ${m.tNo}<br>
직책 명 : ${m.tName}

<hr>
<!-- java의 Map 클래스  사용해보기 실습 -->
<% Map<String,String> prop = new HashMap<>(); %>
<!-- prop.put("키","값" ) -->
<c:set target="<%=prop  %>" property="color"  value="김상건" />
<%=prop.get("color") %>  <!-- 키를 입력하면 벨류값이 출력되야한다  -->
<br>
<c:set var="pro" value="<%=prop %>" />
<!-- 위와같이 해주면 아래내용을 입력했을때 출력이 가능하다-->
${ pro.color }
    
<!-- 또다른실습쓰 -->
<hr>
<c:set var="name" value="영남인재교육원 " /> <!-- String name = "영남인재교육원" 인것과 같다 -->    
 학교 이름 : ${name } <br>
 <!-- 실습2 -->
 
 <%Title t2 = new Title(); %>
 <c:set var="title" value="<%=t2 %>"/> <!-- Title title = t2; 로 하겠다 --> 
 <c:set target="${title}" property="tName" value="과장" /> <!-- title.settName("과장")을 의미하는문장 -->
  직책명 : ${title.tName } <!-- 이 의미는  title.gettName()을 의미하는 문장쓰 -->
 <c:set target="${title }"  property="tNo" value="3" />  <!-- title.setNo(3)을 의미하는 문장쓰 -->
 직책번호 : ${title.tNo }
  
<hr>

<!-- 콘솔창에 출력하기 실습 -->
<%
Title test= new Title();
test.settNo(4);
test.settName("대리");
System.out.printf("직책 번호 : %s<br>",test.gettNo());
System.out.printf("직책 명 : %s<br>",test.gettName()); /* 이렇게 하면 콘솔창에만 출력된다. */
%>  

<!-- 페이지에 출력하기 실습  -->
  직책 번호: <%= test.gettNo() %><br>
  직책 명 : <%= test.gettName() %>   
 <hr> 
  <%Title test2 = new Title(); %>
  <c:set var="mm" value="<%=test2 %>" />  <!-- 이 값을 변수명 mm으로 지정하고 -->
  <c:set target="${mm }" property="tNo" value="5" />
  <c:set target="${mm }" property="tName" value="사원" />
  직책 번호 : ${mm.tNo }<br>  
  직책 명 : ${mm.tName } <br> <!-- c:out는 안해도 이렇게만해도 출력이 되기때문에 잘 안쓴다 -->
 <c:out value="${mm.tNo }"/><br>
 <c:out value="${mm.tName }"/>
  
 <!--  remove 실습-->
 <hr>
 변수 삭제
 <c:remove var ="mm"/>  <!-- mm = null; 과 같은 의미의 문장이다  -->
 <c:out value="${mm }" /><br> 
 
 <!-- if문 실습은 다른페이지로 (use_c_if.jsp 확인하기) -->
  
  
  
  
  
  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>