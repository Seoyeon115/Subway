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
						<div class="coupon1" style="background-color:white; border:1px solid white; ">
							<ul>
								<li><a href="Mypage_coupon.jsp" style="color:black;">사용 가능한 쿠폰</a></li>
							</ul>
						</div>
						<div class="coupon2" style="border:1px solid green; background-color:rgb(0,146,35);  ">
							<ul>
								<li><a href="Mypage_coupon_used.jsp" style="color:white;">만료된 쿠폰</a></li>
							</ul>
						</div>
					</article>
				</section>
			</div>
		<div class="coupon_content">
			
			<br>
			<% if(value1 == 0){ %>
			<div id="coupon1">
				<div class="cute_img1" ><img src="http://localhost:9000/Subway/images/img_profile_male.png" style="filter: brightness(50%)"></div>
					<ul>
						<li id="text1" style="filter: brightness(50%)">2000원</li>
						<li id="text2" style="filter: brightness(50%)">할인쿠폰</li>
					</ul>
			</div>
			<div class="notice_text" style="text-decoration:line-through">10,000원 이상 구매시 할인</div>
			<% }  %>
			<% if(value2 == 0){ %>
			<div id="coupon2">
				<div class="cute_img2"><img src="http://localhost:9000/Subway/images/img_profile_male.png" style="filter: brightness(50%)"></div>
					<ul>
						<li id="text3" style="filter: brightness(50%)">3000원</li>
						<li id="text4" style="filter: brightness(50%)">할인쿠폰</li>
					</ul>
			</div>
			<div class="notice_text" style="text-decoration:line-through">20,000원 이상 구매시 할인</div>
			<% } %>
			<% if(value3 == 0){ %>
			<div id="coupon3">
				<div class="cute_img3"><img src="http://localhost:9000/Subway/images/img_profile_male.png" style="filter: brightness(50%)"> </div>
					<ul>
						<li id="text5" style="filter: brightness(50%)">4000원</li>
						<li id="text6" style="filter: brightness(50%)">할인쿠폰</li>
					</ul>
			</div>
			<div class="notice_text" style="text-decoration:line-through">30,000원 이상 구매시 할인</div>
			<% }  %>
		</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>