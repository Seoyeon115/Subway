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
	<script src="http://localhost:9000/Subway/member/js/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#fpassbtn").click(function(){
				if($("#name").val() == ""){
					alert("이름을 입력해주세요");
					$("#name").focus();
					return false;
				}else if($("#hp").val() == ""){
					alert("휴대폰 번호를 입력해주세요");
					$("#hp").focus();
					return false;
				}else if($("#id").val() == ""){
					alert("아이디를 입력해주세요");
					$("#id").focus();
					return false;
				}else{
					fp_form.submit();
				}
			});
		});
	</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="fp">
		<div class="fp1">
			<div class="fp2">
				<div class="fp3">
					<h2>비밀번호 찾기</h2>
					<div class="fp_text">이름, 휴대폰 번호, 아이디를 입력해주세요.</div>
					<form name="fp_form" action="findidEmailSend.jsp" method="post">
						<ul>
							<li>
								<label>이름</label>
								<input type="text" name="name" id="name" placeholder="이름 입력">
							</li>
							<li>
								<label>휴대폰 번호</label>
								<input type="text" name="hp" id="hp" placeholder="휴대폰 번호 입력" >
							</li>
							<li>
								<label>아이디</label>
								<input type="text" name="id" id="id" placeholder="아이디 입력" >
							</li>
							<li>
								<button type="button" id="fpassbtn">확인</button>
							</li>
						</ul>
					</form>
					<div class="bottom_bar">
					<ul>
						<li><a href="http://localhost:9000/Subway/member/FindId.jsp">아이디 찾기</a><div></div></li>
						<li><a href="http://localhost:9000/Subway/member/FindPass.jsp">비밀번호 찾기</a><div></div></li>
						<li><a href="http://localhost:9000/Subway/member/join.jsp">회원가입</a></li>
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