<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileUpload Form</title>
<style>
#uploadFormArea{
margin : auto;
width: 350px;
border : 1px solid black;
}
.td_title{
font-size:xx-large;
text-align:center;
}
</style>

</head>
<body>
<section id = "uploadFormArea">
<form action="fileUpload.jsp" method="post" enctype="multipart/form-data">
<table>
<tr><td colspan="2" class = "td_title"> 파일 업로드 폼</td>
<tr><td><lable for ="name"> 올린 사람 : </lable></td><td><input type="text" name ="name" id = "name"></td></tr>
<tr><td><lable for ="subject"> 제목 : </lable></td><td><input type="text" name ="subject" id = "subject"></td></tr>
<tr><td><lable for ="fileName1"> 파일명1 : </lable></td><td><input type="file" name ="fileName1" id = "fileName1"></td></tr>
<tr><td><lable for ="fileName2"> 파일명2 : </lable></td><td><input type="file" name ="fileName2" id = "fileName2"></td></tr>
<tr><td colspan=2 align=center><input type="submit" value="전송"></td></tr>

</table>

</form>
</section>
</center>
</body>
</html>