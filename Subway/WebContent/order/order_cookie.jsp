<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>메뉴선택</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/order.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="order_content">
		<jsp:include page="content.jsp"></jsp:include>
	
		<section class="menu_list">
			<div class="menu_tap">
				<ul>
					<li><a href="http://localhost:9000/Subway/order/order_sandwich.jsp">샌드위치</a></li>
					<li class="cookie"><a href="http://localhost:9000/Subway/order/order_cookie.jsp">쿠키</a></li>
					<li><a href="http://localhost:9000/Subway/order/order_drink.jsp">음료</a></li>
				</ul>
			</div>
			<div class="menu_sandwich">
				<ul>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/img_sides_14_20210205012854822.jpg">
							<p>
								<strong>민트초코 쿠키</strong>
								<span class="eng_name">MintChoco</span>
								<span class="kcal">215kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/img_sides_04.jpg">
							<p>
								<strong>초코칩 쿠키</strong>
								<span class="eng_name">Chocolate Chip</span>
								<span class="kcal">200kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/img_sides_03.jpg">
							<p>
								<strong>더블 초코칩 쿠키</strong>
								<span class="eng_name">Double Chocolate Chip</span>
								<span class="kcal">210kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/img_sides_06.jpg">
							<p>
								<strong>라즈베리 치즈케익 쿠키</strong>
								<span class="eng_name">Raspberry Cheese Cake</span>
								<span class="kcal">214kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/img_sides_04.jpg">
							<p>
								<strong>오트밀 레이즌 쿠키</strong>
								<span class="eng_name">Oatmeal Raisin</span>
								<span class="kcal">200kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/img_sides_07.jpg">
							<p>
								<strong>화이트 초코 마카다미아 쿠키</strong>
								<span class="eng_name">White Choco Macadamia</span>
								<span class="kcal">220kcal</span>
							</p>
						</a>
					</li>
				</ul>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>