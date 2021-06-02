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
	<link rel="stylesheet" href="../css/order_detail.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="order.js"></script>
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
								<span class="eng_name">Spicy Shrimp</span>
								<span class="infor">빨간맛에 빠진 쉬림프! 이국적인 매콤함이 더해진 시즌 한정</span>
								<span class="infor">스파이시 쉬림프!</span>
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
					<section class="order_btn">
						<button type="button" class="btn_style" id="modal_btn" data-toggle="modal" data-target="#myModal">주문 시작하기<!-- <img src="http://localhost:9000/Subway/order/order_images/icon_reg.png"> --></button>
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">
									
									<div class="modal-content" style="background-color:#ffc300">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3>빵 길이 선택</h3>
										</div>
										<div class="modal-body" id="modal-body">
											<input type="radio" name="sub" class="btn_radio" value="fifteencm"><label class="label_sub1">&nbsp;&nbsp;15cm</label><br>
											<input type="radio" name="sub" class="btn_radio" value="thirtycm"><label class="label_sub2">&nbsp;&nbsp;30cm</label><br><br><br>
											<button type="button" id="next1" data-toggle="modal" data-target="#myModal2">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							<div class="modal fade" id="myModal2" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:1000px;">
									
									<div class="modal-content" style="background-color:#ffc300;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3>빵 선택</h3>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="bread_list">
												<li id="bread_1">
													<input type="radio" name="bread_choice" id="bread_01"><label for="bread_01" class="bread_01"></label>
													<span>허니오트</span>
												</li>
												<li id="bread_2">
													<input type="radio" name="bread_choice" id="bread_02"><label for="bread_02" class="bread_02"></label>
													<span>하티</span>
												</li>
												<li id="bread_3">
													<input type="radio" name="bread_choice" id="bread_03"><label for="bread_03" class="bread_03"></label>
													<span>위트</span>
												</li>
												<li id="bread_4">
													<input type="radio" name="bread_choice" id="bread_04"><label for="bread_04" class="bread_04"></label>
													<span>파마산 오레가노</span>
												</li>
												<li id="bread_5">
													<input type="radio" name="bread_choice" id="bread_05"><label for="bread_05" class="bread_05"></label>
													<span>화이트</span>
												</li>
												<li id="bread_6">
													<input type="radio" name="bread_choice" id="bread_06"><label for="bread_06" class="bread_06"></label>
													<span>플랫 브레드</span>
												</li>
												
											</ul>
											<button type="button" id="next2" data-toggle="modal" data-target="#myModal3">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade" id="myModal3" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3>치즈 선택</h3>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="cheese_list">
												<li id="cheese_1">
													<input type="radio" name="cheese_choice" id="cheese_01"><label for="cheese_01" class="cheese_01"></label>
													<span>아메리칸 치즈</span>
												</li>
												<li id="cheese_2">
													<input type="radio" name="cheese_choice" id="cheese_02"><label for="cheese_02" class="cheese_02"></label>
													<span>슈레드 치즈</span>
												</li>
												<li id="cheese_3">
													<input type="radio" name="cheese_choice" id="cheese_03"><label for="cheese_03" class="cheese_03"></label>
													<span>모짜렐라 치즈</span>
												</li>
											</ul>
											<button type="button" id="next3" data-toggle="modal" data-target="#myModal4">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							<div class="modal fade modal-dialog-scrollable" id="myModal4" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3>야채 선택</h3>
										</div>
										<div class="modal-body modal-body-scroll" id="modal-body">
											<label>생야채</label>
											<ul class="vegetable_list_01">
												<li id="vegetable_1">
													<input type="checkbox" name="vegetable_choice" id="vegetable_01"><label for="vegetable_01" class="vegetable_01"></label>
													<span>양상추</span>
												</li>
												<li id="vegetable_2">
													<input type="checkbox" name="vegetable_choice" id="vegetable_02"><label for="vegetable_02" class="vegetable_02"></label>
													<span>토마토</span>
												</li>
												<li id="vegetable_3">
													<input type="checkbox" name="vegetable_choice" id="vegetable_03"><label for="vegetable_03" class="vegetable_03"></label>
													<span>오이</span>
												</li>
												<li id="vegetable_4">
													<input type="checkbox" name="vegetable_choice" id="vegetable_04"><label for="vegetable_04" class="vegetable_04"></label>
													<span>피망</span>
												</li>
												<li id="vegetable_5">
													<input type="checkbox" name="vegetable_choice" id="vegetable_05"><label for="vegetable_05" class="vegetable_05"></label>
													<span>양파</span>
												</li>
											</ul>
											<label>절임류</label>
											<ul class="vegetable_list_02">
												<li id="vegetable_6">
													<input type="checkbox" name="vegetable_choice" id="vegetable_06"><label for="vegetable_06" class="vegetable_06"></label>
													<span>피클</span>
												</li>
												<li id="vegetable_7">
													<input type="checkbox" name="vegetable_choice" id="vegetable_07"><label for="vegetable_07" class="vegetable_07"></label>
													<span>올리브</span>
												</li>
												<li id="vegetable_8">
													<input type="checkbox" name="vegetable_choice" id="vegetable_08"><label for="vegetable_08" class="vegetable_08"></label>
													<span>할라피뇨</span>
												</li>
											</ul>
											<button type="button" id="next4" data-toggle="modal" data-target="#myModal5">확인</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade" id="myModal5" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:1000px;">
									
									<div class="modal-content" style="background-color:#ffc300;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3>소스 선택</h3>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="sauce_list">
												<li id="sauce_1">
													<input type="radio" name="sauce_choice" id="sauce_01"><label for="sauce_01" class="sauce_01"></label>
													<span>머스타드</span>
												</li>
												<li id="sauce_2">
													<input type="radio" name="sauce_choice" id="sauce_02"><label for="sauce_02" class="sauce_02"></label>
													<span>레드와인식초</span>
												</li>
												<li id="sauce_3">
													<input type="radio" name="sauce_choice" id="sauce_03"><label for="sauce_03" class="sauce_03"></label>
													<span>스위트 어니언</span>
												</li>
												<li id="sauce_4">
													<input type="radio" name="sauce_choice" id="sauce_04"><label for="sauce_04" class="sauce_04"></label>
													<span>허니 머스타드</span>
												</li>
												<li id="sauce_5">
													<input type="radio" name="sauce_choice" id="sauce_05"><label for="sauce_05" class="sauce_05"></label>
													<span>스위트 칠리</span>
												</li>
												<li id="sauce_6">
													<input type="radio" name="sauce_choice" id="sauce_06"><label for="sauce_06" class="sauce_06"></label>
													<span>스모크 바비큐</span>
												</li>
											</ul>
											<button type="button" id="next5" data-toggle="modal" data-target="#myModal6">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade" id="myModal6" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:1000px;">
									
									<div class="modal-content" style="background-color:#ffc300;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3>추가 선택</h3>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="side_list">
												<li id="side_1">
													<input type="radio" name="side_choice" id="side_01"><label for="side_01" class="side_01"></label>
													<span>에그마요</span>
												</li>
												<li id="side_2">
													<input type="radio" name="side_choice" id="side_02"><label for="side_02" class="side_02"></label>
													<span>오믈렛</span>
												</li>
												<li id="side_3">
													<input type="radio" name="side_choice" id="side_03"><label for="side_03" class="side_03"></label>
													<span>아보카도</span>
												</li>
												<li id="side_4">
													<input type="radio" name="side_choice" id="side_04"><label for="side_04" class="side_04"></label>
													<span>베이컨</span>
												</li>
												<li id="side_5">
													<input type="radio" name="side_choice" id="side_05"><label for="side_05" class="side_05"></label>
													<span>페퍼로니</span>
												</li>
											</ul>
											<button type="button" id="next6" data-toggle="modal" data-target="#myModal7">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade" id="myModal7" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3>세트 선택</h3>
										</div>
										<div class="modal-body" id="modal-body">
											<div>
												<input type="radio" name="single_set"><label>&nbsp;&nbsp;단품</label>
												<input type="radio" name="single_set"><label>&nbsp;&nbsp;세트</label>
											</div>
										</div>
										<div class="modal-body" id="modal-body">
											<div>
												<h4>쿠키 세트 선택</h4>
												<h3>여기에 선택 메뉴 출력</h3>
											</div>
										</div>
										<div class="modal-body modal-body-scroll" id="modal-body">
											<div>
												<h3>쿠키</h3>
												<ul>
													<li>초코칩 쿠키</li>
													<li>더블 초코칩 쿠키</li>
													<li>오트밀 레이즌 쿠키</li>
													<li>라즈베리 치즈케익 쿠키</li>
													<li>화이트 초코 마카다미아 쿠키</li>
													<li>민트초코 쿠키</li>
												</ul>
												<h3>음료</h3>
												<ul>
													<li>탄산음류 16oz</li>
													<li>탄산음류 32oz</li>
												</ul>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" id="next5" data-toggle="modal">확인</button>
										</div>
									</div>
								</div>
							</div>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>