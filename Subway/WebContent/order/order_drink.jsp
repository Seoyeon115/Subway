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
					<li><a href="http://localhost:9000/Subway/order/order_cookie.jsp">쿠키</a></li>
					<li class="drink"><a href="http://localhost:9000/Subway/order/order_drink.jsp">음료</a></li>
				</ul>
			</div>
			<div class="menu_sandwich">
				<ul>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/아메리카노_20200306125654490_20200622104609461.png">
							<p>
								<strong>아메리카노</strong>
								<span class="eng_name">Coffee</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/아이스 아메리카노_20200306125727559_20200622104624885.png">
							<p>
								<strong>아이스 아메리카노</strong>
								<span class="eng_name">Ice coffee</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/탄산음료 16oz_20200306125806625_20200619031027471.png">
							<p>
								<strong>탄산음료 16oz</strong>
								<span class="eng_name">Soda</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/탄산음료 22oz_20200306125825994_20200619031044020.png">
							<p>
								<strong>탄산음료 22oz</strong>
								<span class="eng_name">Soda</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/닥터페퍼_20200306123747014_20200622104511463.png">
							<p>
								<strong>닥터페퍼</strong>
								<span class="eng_name">Docter papper</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/스프라이트(355ml)_20200306125453275_20200622104409536.png">
							<p>
								<strong>스프라이트</strong>
								<span class="eng_name">Sprite</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/코카콜라(355ml)_20200306125533872_20200622104441377.png">
							<p>
								<strong>코카콜라</strong>
								<span class="eng_name">CokeCola</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/미닛메이드 오렌지(350ml)_20200306125424209_20200622104741262.png">
							<p>
								<strong>미닛메이드</strong>
								<span class="eng_name">Minutemaid</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/생수 (휘오 순수)_20200306125557650_20200619030933922.png">
							<p>
								<strong>생수</strong>
								<span class="eng_name">Water</span>
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