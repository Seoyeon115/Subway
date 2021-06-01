<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>HOME-SUB > 매장찾기</title>
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
			<article class="order_step0">
				<div>
					<img src="http://localhost:9000/Subway/order/order_images/step01_on_bg.png">
					<div>
						<span>STEP 1</span><br>
						<span>매장선택</span>
					</div>
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_on.png">
					<img src="http://localhost:9000/Subway/order/order_images/step02_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step03_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step04_off_bg.png">
				</div>
			</article>
		</section>

		<section class="menu_list">
			<div class="order_map">
				<iframe src="https://map.naver.com/v5/search/%EC%84%9C%EB%B8%8C%EC%9B%A8%EC%9D%B4?c=14134222.5546623,4518373.6724403,15,0,0,0,dh"></iframe>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>