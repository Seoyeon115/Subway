<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.dao.*,com.subway.vo.*"%>
<%
	SessionVO svo = (SessionVO) session.getAttribute("svo");
	MemberDAO mdao = new MemberDAO();
	int value1 = mdao.coupon1(svo.getEmail());
	int value2 = mdao.coupon2(svo.getEmail());
	int value3 = mdao.coupon3(svo.getEmail());
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_coupon.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
			<h1>쿠폰</h1>
			<div class="coupon_tab">
				<section>
					<article>
						<div class="coupon1">
							<ul>
								<li><a href="#">사용 가능한 쿠폰</a></li>
							</ul>
						</div>
						<div class="coupon2">
							<ul>
								<li><a href="Mypage_coupon_used.jsp">만료된 쿠폰</a></li>
							</ul>
						</div>
					</article>
				</section>
			</div>
		<div class="coupon_content">
			<span>6월 한달간 진행되는 회원가입 할인쿠폰 발행 이벤트<br>
				  SUBWAY의 가족이 되어주세요!</span>
			<% if(value1 == 1){ %>
			<div id="coupon1">
				<div class="cute_img1"><img src="http://localhost:9000/Subway/images/img_profile_male.png"></div>
					<ul>
						<li id="text1">2000원</li>
						<li id="text2">할인쿠폰</li>
					</ul>
			</div>
			<div class="notice_text">10,000원 이상 구매시 할인</div>
			<% }  %>
			<% if(value2 == 1){ %>
			<div id="coupon2">
				<div class="cute_img2"><img src="http://localhost:9000/Subway/images/img_profile_male.png"></div>
					<ul>
						<li id="text3">3000원</li>
						<li id="text4">할인쿠폰</li>
					</ul>
			</div>
			<div class="notice_text">20,000원 이상 구매시 할인</div>
			<% } %>
			<% if(value3 == 1){ %>
			<div id="coupon3">
				<div class="cute_img3"><img src="http://localhost:9000/Subway/images/img_profile_male.png"></div>
					<ul>
						<li id="text5">4000원</li>
						<li id="text6">할인쿠폰</li>
					</ul>
			</div>
			<div class="notice_text">30,000원 이상 구매시 할인</div>
			<% }  %>
		</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>