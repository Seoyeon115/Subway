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
					<li class="sandwich"><a href="http://localhost:9000/Subway/order/order_sandwich.jsp">샌드위치</a></li>
					<li><a href="http://localhost:9000/Subway/order/order_cookie.jsp">쿠키</a></li>
					<li><a href="http://localhost:9000/Subway/order/order_drink.jsp">음료</a></li>
				</ul>
			</div>
			<div class="menu_sandwich">
				<div class="order_detail">
					<article class="menu_inform">
						<div>
							<img src="http://localhost:9000/Subway/order/order_images/스파이스쉬림프(샌드위치)_20210430044448992.png">
							<p>
								<span>샌드위치</span>
								<strong>스파이시 쉬림프</strong>
								<span>Spicy Shrimp</span>
								<span>빨간맛에 빠진 쉬림프! 이국적인 매콤함이 더해진 시즌 한정</span>
								<span>스파이시 쉬림프!</span>
							</p>
						</div>
					</article>
					<section class="nutrient">
						<h1>영양성분표</h1>
						<table class="content_layout">
							<tr>
								<th>중량(g)</th>
								<th>열량(kacl)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>포화지방(g)</th>
								<th>나트륨(mg)</th>
							</tr>
							<div></div>
							<tr>
								<td>196</td>
								<td>233</td>
								<td>9</td>
								<td>14(25%)</td>
								<td>1(7%)</td>
								<td>513(26%)</td>
							</tr>
						</table>
						<div>
							<span>※ 샌드위치 영양정보 : 기본야채 5종(양상추, 토마토, 양파, 피망, 오이) 및 제품에 따른 미트류 포함, 치즈 및 소스 제외, 15cm 위트 브레드 기준</span>
							<span>※ 괄호 안 %는 1일 영양소 기준치에 대한 비율</span>
						</div>
					</section>
					<section class="confirm">
						<ol>
							<li class="step01">
								<dl>
									<dt>
										<img src="http://localhost:9000/Subway/order/order_images/menu_view_bg01.png">
										<strong>STEP 01</strong>
										<span>필수 선택 *</span>
									</dt>
									<dd>
										<ul>
											<li>
												<a href="#">길이 선택</a>
											</li>
											<li>
												<a href="#">빵 선택</a>
											</li>
											<li>
												<a href="#">치즈 선택</a>
											</li>
											<li>
												<a href="#">야채 선택</a>
											</li>
											<li>
												<a href="#">소스/시즈닝 선택</a>
											</li>
								
										</ul>
										<span></span>
									</dd>
								</dl>
							</li>
							<li class="step02">
								<dl>
									<dt>
										<img src="http://localhost:9000/Subway/order/order_images/menu_view_bg02.png">
										<strong>STEP 02</strong>
										<span>추가 선택</span>
									</dt>
									<dd>
										<ul>
											<li>
												<a href="#">추가 선택</a>
											</li>
											<li>
												<a href="#">미트 추가</a>
											</li>
										</ul>
										<span></span>
									</dd>
								</dl>
							</li>
							<li class="step03">
								<dl>
									<dt>
										<img src="http://localhost:9000/Subway/order/order_images/menu_view_bg03.png">
										<strong>STEP 03</strong>
										<span>상품 선택</span>
									</dt>
									<dd>
										<ul>
											<li>
												<a href="#">단품</a>
											</li>
											<li>
												<a href="#">세트</a>
											</li>
										</ul>
										<span></span>
									</dd>
								</dl>
							</li>
						</ol>
					</section>
					<section class="order_price">
						<div class="count">
							<span>수량</span>
							<img src="http://localhost:9000/Subway/order/order_images/btn_minus.png">
							<img src="http://localhost:9000/Subway/order/order_images/btn_plus.png">
						</div>
						<div class="price">
							<span>최종 결제 금액</span>
							<span>원</span>
						</div>
					</section>
					<section class="order_btn">
						<button type="button" class="btn_style2"onclick="location.href='#'">장바구니</button>
						<button type="button" class="btn_style" onclick="location.href='#'">주문하기</button>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>