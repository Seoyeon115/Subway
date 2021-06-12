<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/loginfail.css">
	
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
	<h3>등록된 회원정보가 존재하지 않습니다.</h3>
		<div class="link">
			<a href="http://localhost:9000/Subway/member/FindId.jsp">아이디 찾기</a>
			<a href="http://localhost:9000/Subway/member/FindPass.jsp">비밀번호 찾기</a>				
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>