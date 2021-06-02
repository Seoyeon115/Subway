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
	<script src="../order/js/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#minus").click(function(){
				if($("#count_result").text() > 1){
					$("#count_result").text(parseInt($("#count_result").text())-1);
					$("#count_price").text(parseInt($("#count_price").text())-1000);
				}
			});
			$("#plus").click(function(){
				$("#count_result").text(parseInt($("#count_result").text())+1);
				$("#count_price").text(1000+parseInt($("#count_price").text()));
			});
		});
	</script>
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
				<div class="order_detail">
					<article class="menu_inform">
						<div>
							<img src="http://localhost:9000/Subway/order/order_images/img_sides_14_20210205012854822.jpg">
							<p>
								<strong>민트초코 쿠키</strong>
								<span class="eng_name">MintChoco</span>
								<span class="infor">민초 시즌이 돌아왔다!</span>
								<span class="infor">진한 초콜릿에 상쾌한 민트가 퐁당!</span>
								<span class="infor">특별한 달콤함에 푹 빠져보세요.</span>
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
								<td>45</td>
								<td>215</td>
								<td>20</td>
								<td>2(4%)</td>
								<td>6(37%)</td>
								<td>130(7%)</td>
							</tr>
						</table>
						<div>
							<span>※ 괄호 안 %는 1일 영양소 기준치에 대한 비율</span>
						</div>
					</section>
					<section class="order_price">
						<div class="count">
							<span>수량</span>
							<input type="button" onclick="minus" id="minus">
							<span id="count_result">1</span>
							<input type="button" onclick="plus" id="plus">
						</div>
						<div class="price">
							<span>최종 결제 금액</span>
							<span id="count_price">1000</span><span>원</span>
						</div>
					</section>
					<section class="order_btn">
						<button type="button" class="btn_style2"onclick="location.href='#'">장바구니</button>
						<button type="button" class="btn_style" onclick="location.href='http://localhost:9000/Subway/order/order_final.jsp'">주문하기</button>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>