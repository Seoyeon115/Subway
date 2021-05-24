<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>HOME-SUB > 메뉴선택</title>
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
			<article class="order_step">
				<div>
					<img src="http://localhost:9000/Subway/order/order_images/step01_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step02_on_bg.png">
					<div>
						<span>STEP 1</span><br>
						<span>메뉴선택</span>
					</div>
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_on.png">
					<img src="http://localhost:9000/Subway/order/order_images/step03_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step04_off_bg.png">
				</div>
			</article>
		</section>
		<section class="menu_list">
			<div class="menu_tap">
				<ul>
					<li><a href="#">샌드위치</a></li>
					<li><a href="#">쿠키</a></li>
					<li><a href="#">음료</a></li>
				</ul>
			</div>
			<div class="menu_sandwich">
				<ul>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/스파이스쉬림프(샌드위치)_20210430044448992.png">
							<p>
								<strong>스파이시 쉬림프</strong>
								<span class="eng_name">Spicy Shrimp</span>
								<span class="kcal">233kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/쉬림프_20200707033336312.jpg">
							<p>
								<strong>쉬림프</strong>
								<span class="eng_name">Shrimp</span>
								<span class="kcal">223kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/스테이크-&-치즈_20200707033941552.jpg">
							<p>
								<strong>스테이크 & 치즈</strong>
								<span class="eng_name">Steak & Cheese</span>
								<span class="kcal">380kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/터키-베이컨-아보카도_20200707033620859.jpg">
							<p>
								<strong>터키 베이컨 아보카도</strong>
								<span class="eng_name">Turkey Bacon Avocado</span>
								<span class="kcal">420kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/로스트치킨샌드위치_20210503115845372.png">
							<p>
								<strong>로스트 치킨</strong>
								<span class="eng_name">Roasted Chicken</span>
								<span class="kcal">320kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/로티세리-바비큐-치킨_20200707033442354.jpg">
							<p>
								<strong>로티세리 바비큐 치킨</strong>
								<span class="eng_name">Rotisserie Barbecue Chicken</span>
								<span class="kcal">350kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/풀드포크_20200707034509267.jpg">
							<p>
								<strong>풀드 포크 바비큐</strong>
								<span class="eng_name">Pulled Pork Barbecue</span>
								<span class="kcal">327kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/써브웨이 클럽(샌드위치)_20210503113325285.png">
							<p>
								<strong>써브웨이 클럽</strong>
								<span class="eng_name">Subway Club</span>
								<span class="kcal">293kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/스파이시-이탈리안_20200707034007905.jpg">
							<p>
								<strong>스파이시 이탈리안</strong>
								<span class="eng_name">Spicy Italian</span>
								<span class="kcal">480kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/치킨-데리야끼_20200707034325843.jpg">
							<p>
								<strong>치킨 데리야끼</strong>
								<span class="eng_name">Chicken Teriyaki</span>
								<span class="kcal">370kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/비엘티_20200707033847305.jpg">
							<p>
								<strong>비엘티</strong>
								<span class="eng_name">B.L.T</span>
								<span class="kcal">410kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/이탈리안-비엠티_20200707034231821.jpg">
							<p>
								<strong>이탈리아비엠티</strong>
								<span class="eng_name">Italian B.M.T</span>
								<span class="kcal">410kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/미트볼샌드위치_20210503115916905.png">
							<p>
								<strong>미트볼</strong>
								<span class="eng_name">Meatball</span>
								<span class="kcal">480kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/터키_20200707034417340.jpg">
							<p>
								<strong>터키</strong>
								<span class="eng_name">Turkey</span>
								<span class="kcal">280kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/참치_20200707034257210.jpg">
							<p>
								<strong>참치</strong>
								<span class="eng_name">Tuna</span>
								<span class="kcal">480kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/햄_20200707034527390.jpg">
							<p>
								<strong>햄</strong>
								<span class="eng_name">Ham</span>
								<span class="kcal">290kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/에그마요_20200707034204773.jpg">
							<p>
								<strong>에그마요</strong>
								<span class="eng_name">Egg Mayo</span>
								<span class="kcal">480kcal</span>
							</p>
						</a>
					</li>
					<li>
						<a href="#"><img src="http://localhost:9000/Subway/order/order_images/베지_20200707033712850.jpg">
							<p>
								<strong>베지</strong>
								<span class="eng_name">Veggie Delite</span>
								<span class="kcal">230kcal</span>
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