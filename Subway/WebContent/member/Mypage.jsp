<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.SessionVO" %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){
		
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>MY SUB</h1>
		<div class="mysub1">
			<section>
				<article>
					<div class="info">
						<div class="info_img">
						<img src="http://localhost:9000/Subway/images/img_profile_male.png">
						</div>
						<div class="info_text"><%= svo.getName() %>님</div>
						<a href="http://localhost:9000/Subway/member/Mypage_passcheck.jsp">회원 정보 변경</a>
					</div>
					<div class="myorder">
						<div class="myorder_text">
						주문내역<br><p>0개</p>
						</div>
						<div class="myorder_link"><a href="http://localhost:9000/Subway/member/Mypage_orderlist.jsp?email=<%= svo.getEmail() %>">주문 내역 관리</a></div>
					</div>
					<div class="coupon">
						<div class="coupon_text">
						쿠폰<br><p>0개</p>
						</div>
						<div class="coupon_link"><a href="http://localhost:9000/Subway/member/Mypage_coupon.jsp">쿠폰 관리</a></div>
					</div>
				</article>
			</section>
		</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>
<% }else{ %>

	<script>
		window.alert("로그인 후 사용이 가능합니다.");
		location.href="http://localhost:9000/Subway/member/login.jsp";
	</script>

<% } %>