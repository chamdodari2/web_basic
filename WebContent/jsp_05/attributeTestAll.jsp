<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
<tr>
<td>초기 파라미터 이름</td>
<td>초기 파라미터 값</td>
</tr>
<% 


%>
</table>
<%
String name = (String)application.getAttributeNames()("name");
String id = (String) application.getAttribute("id");

%>

<%=name %><br> <%=id  %>
</body>
</html>