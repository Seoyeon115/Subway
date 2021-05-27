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
			<article class="order_step2">
				<div>
					<img src="http://localhost:9000/Subway/order/order_images/step01_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step02_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step03_on_bg.png">
					<div>
						<span>STEP 2</span><br>
						<span>주문하기</span>
					</div>
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_on.png">
					<img src="http://localhost:9000/Subway/order/order_images/step04_off_bg.png">
				</div>
			</article>
		</section>

		<section class="menu_list">
			<div class="menu_sandwich">
				<div class="order_detail">
					<section class="order_form_box">
						<h2>픽업 매장</h2>
						<div class="store_form">
							<div>
								<dl>
									<dt>매장명</dt>
									<dd>주소</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>방문포장/매장식사</dt>
									<dd>
										<input type="radio" value="takeout" name="방문포장" id="takeout">방문포장
										<input type="radio" value="takein" name="매장식사" id="takein">매장식사
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>전화번호</dt>
									<dd>
										<input type="text" name="hp">
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>주문시, 요청사항</dt>
									<dd>
										<input type="text" placeholder="주문시 요청사항을 입력하세요">
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>일회용품</dt>
									<dd>
										<input type="radio" value="" name="" id="">일회용품(스푼, 포크 등)을 사용하지 않겠습니다.
									</dd>
								</dl>
							</div>
						</div>
						<h2>할인 방법 선택</h2>
						<div class="coupon_choice">
							<dl>
								<dt>쿠폰 사용</dt>
								<dd>
									<select name="coupon" id="coupon">
										<option></option>
									</select>
								</dd>
							</dl>
						</div>
						<h2>결제 수단 선택</h2>
						
					</section>
					<!-- 
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
					-->
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>