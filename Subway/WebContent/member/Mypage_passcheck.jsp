<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_passcheck.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<div class="passcheck_text">
			<h1>비밀번호 확인</h1>
			<p>회원가입 시 등록한 비밀번호를 재입력 해주세요.</p>
			<div class="content1">
				<div class="passcheck_form">
							<form name="passcheck_form" action="#" method="get">
								<ul>
									<li>
										<label>이메일 주소</label>
										<input type="text" name="email" id="email" placeholder="이메일주소 입력">
									</li>
									<li>
										<label>비밀번호</label>
										<input type="password" name="pass" id="pass" placeholder="비밀번호 입력">
									</li>
								</ul>
							</form>
							<div class="warning">
								<div class="warning_img"><img src="http://localhost:9000/Subway/images/icon_exc.png"></div>
								&nbsp;&nbsp;&nbsp;&nbsp;개인정보 보호를 위해 주기적으로 비밀번호를 변경해 주시고, 타인에게 비밀번호가 노출되지 않도록 주의해 주세요.
							</div>
				</div>
			</div>
				<div class="passcheck_button">
					<button type="button">확인</button>
				</div>
		</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>