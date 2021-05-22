<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/member.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<div class="login1">
			<div class="login2">
				<div class="login3">
					<h2>LOGIN</h2>
					<div class="login_text">써브웨이 회원으로 로그인하시면 제공하는<br>다양한 서비스를 이용할 수 있습니다.</div>
					<form name="login_form" action="#" method="get">
						<ul>
							<li>
								<label>이메일 아이디</label>
								<input type="text" name="id" id="id" placeholder="이메일 아이디 입력">
							</li>
							<li>
								<label>비밀번호</label>
								<input type="password" name="pass" id="pass" placeholder="비밀번호 입력" >
							</li>
							<li>
								<span class="radio"><input type="radio" name="saveid" id="saveid" value="sid">이메일 아이디 저장</span>
							</li>
							<li>
								<button type="button">로그인</button>
							</li>
						</ul>
					</form>
					<div class="bottom_bar">
					<ul>
						<li><a href="#">아이디 찾기</a><div></div></li>
						<li><a href="#">비밀번호 찾기</a><div></div></li>
						<li><a href="#">회원가입</a></li>
					</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>