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
						<span>STEP 3</span><br>
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
										<input type="radio" value="takeout" name="eat" id="takeout"><label>방문포장 </label>
										<input type="radio" value="takein" name="eat" id="takein"><label>매장식사</label>
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
										<option value="">보유하신 쿠폰이 없습니다.</option>
									</select>
									<div></div>
									<a href="#">쿠폰 사용</a>
								</dd>
							</dl>
						</div>
						<h2>결제 수단 선택</h2>
						<div class="pay_choice">
							<div>
								<dl>
									<dt>현금 영수증 신청</dt>
									<dd>
										<ul>
											<li><a href="#">발금안함</a></li>
											<li><a href="#">개인소득공제</a></li>
											<li><a href="#">사업자증빙용</a></li>
										</ul>
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>결제 수단</dt>
									<dd>
										<ul>
											<li><a href="#">신용카드</a></li>
										</ul>
									</dd>
								</dl>
							</div>
						</div>
					</section>
					<section class="final_menu_confirm">
						<h2>주문내역</h2>
						<div class="menu_confirm">
							<dl>
								<dt>스파이시 쉬림프</dt>
								<dd><span id="menu_amount">1개</span><strong id="menu_price">8000 </strong>원</dd>
							</dl>
						</div>
					</section>
					<section class="total_amount">
						<h2>총 결제 금액</h2>
						<div class="amount">
							<dl>
								<dt>총 주문 금액</dt>
								<dd><strong id="orderTotal">8000 </strong>원</dd>
							</dl>
							<dl>
								<dt>쿠폰 사용</dt>
								<dd><strong id="couponTotal"></strong>0원</dd>
							</dl>
							<dl>
								<dt>잔여 결제금액</dt>
								<dd><strong id="finalTotal">8000 </strong>원</dd>
							</dl>
						</div>
					</section>
					<section class="pay_btn">
						<button type="button" class="btn_style"onclick="location.href='http://localhost:9000/Subway/order/order_final_check.jsp'">결제하기</button>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>