<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.dao.*,com.subway.vo.*"%>
<%

	String hp = request.getParameter("hp");
	String userID = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	String email = null;
	String pass = null;
	if(userID == null){
		email = dao.getUserEmail(hp);
	}else {
		pass = dao.getUserPass(userID);
	}
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
					<div class="login_text">써브웨이 회원으로 로그인하시면 제공하는<br>다양한 서비스를 이용할 수 있습니다.</div>
					<% if(pass == null) { %><span>고객님의 아이디는 <%= email %> 입니다 </span><%} else { %>
						<span>고객님의 비밀번호는 <%= pass %> 입니다 </span>
					<% } %>
					
					<div class="bottom_bar" style="display:inline-block; margin-left:70px;">
					<ul style="margin:auto;">
						<li><a href="http://localhost:9000/Subway/member/login.jsp">로그인</a><div></div></li>
						<li><a href="http://localhost:9000/Subway/member/join.jsp">회원가입</a><div></div></li>
						<li><a href="http://localhost:9000/Subway/main/subway_main.jsp">메인화면으로</a></li>
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