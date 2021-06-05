<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<style>
		div.joinSuccess{
			width:100%;
			height:500px;
			text-align:center;
			border-top:2px solid rgb(229,229,229);
		}
		div.joinSuccess2{
			width:1000px;
			height:400px;
			margin:auto;
		}
		div.joinSuccess2 h3{
			text-align:center;
			margin-bottom:30px;
			margin-top:50px;
		}
		div.joinSuccess2 a{
			text-decoration:none;
			border:1px solid #00891a;
			background-color:#00891a;
			color:white;
			font-weight:900;
			padding:5px 10px;
			
		}
	</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="joinSuccess">
		<div class="joinSuccess2">
			<h3>회원가입에 성공하셨습니다.</h3>
			<a href="http://localhost:9000/Subway/main/subway_main.jsp">홈으로 돌아가기</a>
			<a href="http://localhost:9000/Subway/member/login.jsp">로그인 화면으로 이동</a>
		</div>					
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>