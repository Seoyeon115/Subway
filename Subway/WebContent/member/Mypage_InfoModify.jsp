<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_infomodify.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>정보변경</h1>
		<form name="modify_form" action="#" method="post">
			<div class="member_info">
				<div class="member_info2">
					<div class="member_info3">
						<h3>회원 정보</h3>
						<button type="button">비밀번호 변경</button>
					</div>
					<!--  <ul>
						<li>
							<label>이메일 아이디</label>
							<input type="text" name="email" id="email" value="">
							
						</li>
						<li>
							<label>우편번호</label>
							<input type="text" name="post" id="post" value="">
						</li>
						<li>
							<label>주소</label>
							<input type="text" name="addr" id="addr" value="">
						</li>
						<li>
							<label>휴대폰 번호</label>
							<input type="text" name="hp" id="hp" value="">
							<button type="button">정보변경</button>
						</li>
					</ul> -->
					<table border="1">
						<tr>
							<th>이메일 아이디</th>
							<td colspan="5">0428mhk@naver.com</td>
						</tr>
					</table>
					<br>
					<table border="1" id="content_table">	
						<tr>
							<th>이름</th>
							<td colspan="5">김민호</td>
						</tr>
						<tr>
							<th>주소</th>
							<td colspan="5">경기도</td>
						</tr>
						<tr>
							<th>휴대폰 번호</th>
							<td colspan="5">010-2222-2222<button type="button">정보변경</button></td>
							
						</tr>
					</table>
					<p>· 이름이나 생년월일, 성별, 핸드폰 번호 등의 정보가 변경되었다면 본인확인을 통해 정보를 수정할 수 있습니다.</p>
				</div>
			</div>
			<div class="info_button">
				<button type="button">회원탈퇴</button>
				<button type="button">회원정보 변경</button>
			</div>
		</form>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>