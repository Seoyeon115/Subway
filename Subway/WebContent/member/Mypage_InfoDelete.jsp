<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<% 
	String email = request.getParameter("email");
	System.out.println(email);
	String pass = request.getParameter("pass");
	System.out.println(pass);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_infodelete.css">


	
	
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>회원삭제</h1>
			<div class="member_info">
				<div class="member_info2">
					<div class="member_info3">
						<h2>서브웨이 탈퇴 전 꼭 확인해주세요!</h2>
						<div class="delete_text">서브웨이 계정 탈퇴 시 서브웨이와 관련된 모든 정보가 삭제되며</div>
						<div class="delete_tex2">한번 삭제된 서브웨이 계정의 서비스 이용기록은 복구될수 없으니 신중하게 선택해주세요!</div>
						<div class="delete_img"><img src="http://localhost:9000/Subway/images/logo.png"></div>
						<div class="delete_button">
						<a href="Mypage_InfoModify.jsp?email=<%=email%>&pass=<%=pass%>"><button type="button">이전페이지</button></a>
						<a href="Mypage_InfoDeleteProcess.jsp?email=<%=email%>"><button type="button">확인</button></a>
						</div>				
					</div>
					
					
				</div>
			</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>