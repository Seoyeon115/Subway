<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>주문서</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/order.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="order_content">
		<section class="order_title">
			<div>
				<h1>Home-sub</h1>
				<span>온라인 주문 시 배달되는 서비스입니다.</span>
			</div>
			<article class="order_step3">
				<div>
					<img src="http://localhost:9000/Subway/order/order_images/step01_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step02_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step03_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step04_on_bg2.png">
					<div>
						<span>STEP 3</span><br>
						<span>주문완료</span>
					</div>
				</div>
			</article>
		</section>

		<section class="menu_list">
			<div class="menu_sandwich">
				<div class="order_detail">
					<div class="order_final_form">
						<img src="http://localhost:9000/Subway/order/order_images/step04_on_bg.png">
						<div>주문이 완료되었습니다.</div>
					</div>
					
					<section class="order_check_btn">
						<button type="button" class="btn_style2"onclick="location.href='http://localhost:9000/Subway/main/subway_main.jsp'">홈으로 이동</button>
						<button type="button" class="btn_style"onclick="location.href='http://localhost:9000/Subway/member/Mypage_orderlist.jsp'">주문 내역 확인</button>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>