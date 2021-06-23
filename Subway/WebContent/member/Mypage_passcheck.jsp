<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<% 
	SessionVO svo = (SessionVO)session.getAttribute("svo");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_passcheck.css">
	<script src="http://localhost:9000/Subway/member/js/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#passcheckbtn").click(function(){
				if($("#email").val() == ""){
					alert("이메일 주소를 입력해주세요");
					$("#email").focus();
					return false;
				}else if($("#pass").val() == ""){
					alert("비밀번호를 입력해주세요");
					$("#pass").focus();
					return false;
				}else{
					passcheck_form.submit();
				}
			});
		});	
	</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<div class="passcheck_text">
			<h1>회원정보 확인</h1>
			<p>회원가입시 등록한 비밀번호를 재입력 해주세요.</p>
			<form name="passcheck_form" action="Mypage_PassProcess.jsp" method="post">
			<input type="hidden" name="email" value="<%= svo.getEmail() %>">
			<div class="content1">
				<div class="passcheck_form">
								<ul>
									<li>
										<label>이메일 주소</label>
										<input type="text" name="email" id="email" value="<%= svo.getEmail() %>" readonly>
									</li>
									<li>
										<label>비밀번호</label>
										<input type="password" name="pass" id="pass" placeholder="비밀번호 입력">
									</li>		
								</ul>
							<div class="warning">
								<div class="warning_img"><img src="http://localhost:9000/Subway/images/icon_exc.png"></div>
								&nbsp;&nbsp;&nbsp;&nbsp;개인정보 보호를 위해 주기적으로 비밀번호를 변경해 주시고, 타인에게 비밀번호가 노출되지 않도록 주의해 주세요.
							</div>
				</div>
			</div>
			
				<div class="passcheck_button">
					<input type="button" id="passcheckbtn" value="확인">
				</div>
			</form>
		</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>