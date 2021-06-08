<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.dao.*,com.subway.vo.*"%>
<%
	String hp = request.getParameter("hp");
	MemberDAO dao = new MemberDAO();
	String email = dao.getUserEmail(hp);
	System.out.println(hp);
%>
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
			$("#loginbtn").click(function(){
				if($("#id").val() == ""){
					alert("이메일 아이디를 입력해주세요");
					$("#id").focus();
					return false;
				}else if($("#pass").val() == ""){
					alert("비밀번호를 입력해주세요");
					$("#pass").focus();
					return false;
				}else{
					login_form.submit();
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
		<div class="login1">
			<div class="login2">
				<div class="login3">
					<h2>LOGIN</h2>
					<div class="login_text">써브웨이 회원으로 로그인하시면 제공하는<br>다양한 서비스를 이용할 수 있습니다.</div>
					<span>고객님의 아이디는 <%= email %> 입니다 </span>
					<form name="login_form" action="loginProcess.jsp" method="post">
						<ul>
							<li>
								<label>이메일 아이디</label>
								<input type="text" name="email" id="email" placeholder="이메일 아이디 입력">
							</li>
							<li>
								<label>비밀번호</label>
								<input type="password" name="pass" id="pass" placeholder="비밀번호 입력" >
							</li>
							<li>
								<span class="radio"><input type="radio" name="saveid" id="saveid" value="sid">이메일 아이디 저장</span>
							</li>
							<li>
								<button type="button" id="loginbtn">로그인</button>
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