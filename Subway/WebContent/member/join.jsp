<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/join.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>회원가입</h1>
			<div class="join">
				<div class="header">정보입력</div>
						<h3>기본 정보(필수 입력)</h3>
							<div class="form1">
							<form name="join_form" action="#" method="get">
								<ul>
									<li>
										<label>아이디(이메일)</label>
										<input type="text" name="email1" id="email1" placeholder="이메일 입력"> &nbsp;&nbsp;@
										<input type="text" name="email2" id="email2" placeholder="이메일 입력">
										<select id="email3">
											<option value="">직접 입력</option>
											<option value="naver.com">네이버</option>
											<option value="gmail.com">구글</option>
											<option value="daum.net">다음</option>
										</select>
										<button type="button">중복확인</button>
									</li>
									<li>
										<label>아이디(이메일)확인</label>
										<input type="text" name="email1" id="email1" placeholder="이메일 입력"> &nbsp;&nbsp;@
										<input type="text" name="email2" id="email2" placeholder="이메일 입력">
										<select id="email3">
											<option value="">직접 입력</option>
											<option value="naver.com">네이버</option>
											<option value="gmail.com">구글</option>
											<option value="daum.net">다음</option>
										</select>
									</li>
									<li>
										<label>비밀번호</label>
										<input type="password" name="pass" id="pass" placeholder="비밀번호 입력">
									</li>
									<li>
										<label>비밀번호 확인</label>
										<input type="password" name="cpass" id="cpass" placeholder="비밀번호 입력">
									</li>
									<li>
										<label>휴대폰 번호</label>
										<input type="text" name="hp1" id="hp1" placeholder="휴대폰번호 입력"> &nbsp;&nbsp;&nbsp;-
										<input type="text" name="hp2" id="hp2" placeholder="휴대폰번호 입력"> &nbsp;&nbsp;&nbsp;-
										<input type="text" name="hp3" id="hp3" placeholder="휴대폰번호 입력"> 
									</li>
								</ul>
							</form>
							</div>
							
							<h4>추가 정보(선택 입력)</h4>
							<div class="form2">
							<form name="join_form2" action="#" method="get">
								<ul>
									<li>
										<label>우편번호</label>
										<input type="text" name="mail" id="mail" placeholder="우편번호 입력">
										<button type="button">우편번호검색</button>
									</li>
									<li>
										<label>주소</label>
										<input type="text" name="addr" id="addr" placeholder="주소 입력">
									</li>
									<li>
										<label>상세주소</label>
										<input type="text" name="detail_addr" id="detail_addr" placeholder="상세주소 입력">
									</li>
								</ul>
							</form>
							</div>
						
			</div>
			<div class="check">
				<button type="button">회원가입 완료</button>
			</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>