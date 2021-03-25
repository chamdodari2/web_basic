<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.setMaxInactiveInterval(60*5);

String name;  //name에
String id;
%>
<% 
if(session.getAttribute("name")!= null){ //name의 value가 null이 아니면
	name=(String) session.getAttribute("name");  
}else{
	name="세션 값 없음";
	
}

if(session.getAttribute("id")!= null){ //name의 value가 null이 아니면
	id=(String) session.getAttribute("id");  
}else{
	id="id 값 없음";
	
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Session Test</title>
</head>
<body>
<h1>세션 테스트</h1>
<input type="button" onclick = "location.href='sessionSet.jsp'"value="세션 값 저장">
<input type="button" onclick = "location.href='sessionDel.jsp'"value="세션 값 삭제">
<input type="button" onclick = "location.href='sessionInvalidate.jsp'"value="세션  초기화">
<h2><%=name %></h2>
<h2><%=id %></h2>


<hr>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
Date time = new Date();
time.setTime(session.getCreationTime());
%>
<%time.setTime(session.getCreationTime());%>
<h4>세션 생성 시간 : <%sdf.format(time); %></h4>

<%time.setTime(session.getLastAccessedTime()); %>
<h4>마지막 접근시간(1/1000초 ) : <%sdf.format(time); %></h4>

<h4>세션 ID : <%=session.getId() %></h4>

</body>
</html>