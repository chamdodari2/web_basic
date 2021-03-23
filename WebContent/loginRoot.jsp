<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
h1 {
	text-align: center;
}

#LoginFormArea {
	text-align: center;
	whidth: 250px;
	margin: auto;
	border: 1px  solid red/* 상하좌우 1픽셀로, 색은 레드 */

}
</style>


</head>
<body>
	<h1>로그인</h1>
	<section id="LoginFormArea">
		<form action="loginroot" method="get">   <!-- 액션 뒤에 jsp_03으로 해줬다가 지움 -->
		<label id="id">아이디:</label>
		<input type="text" name="id" id="id">  <!-- 연결하는 이유: 회원가입할때 수정하려면 뒤로 돌아가서 처음부터 다시 다 입력해야하는거 예방-->
		 <br>
		<label id="password">비밀번호: </label> 
		<input type="password" name="password" id="password"> <!--  레이블에 있는것과 동일하게 쌍따옴표에 들어가야한다.-->  <!-- name값으로 봐야한다. id값 아님. id는 표시해주기위한거(?) -->
		<br><br>
		<input type = "submit" value="로그인">
		</form>
	</section>
</body>
</html>