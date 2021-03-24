<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String pagefile=request.getParameter("page"); //템플릿 페이지에 표시할 웹 페이지 이름 얻는다
if (pagefile==null){
	pagefile="newitem";
}
%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
table{
margin : auto;
width : 960px;
color : gray;
border : 1px solid gray;

}
</style>
</body>
<table>
<tr>
<td height="43" colspan=3 align=left>
<jsp:include page="top.jsp"/>
</td>
</tr>
<tr>
<td width="15%" align=right valign=top><br>
<jsp:include page="left.jsp"/>
</td>
<td colspan="2" align="center">
<jsp:include page='<%=pagefile+".jsp" %>' />
</td>
</tr>
<tr>
<td width="100%" height="40" colspan="3">
<jsp:include page="bottom.jsp"></jsp:include>
</td>
</tr>
</table>
</html>