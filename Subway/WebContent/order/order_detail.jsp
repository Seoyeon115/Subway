<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.dao.*,com.subway.vo.*"%>
<%
	String idx = request.getParameter("idx");
	MenuDAO dao = new MenuDAO();
	MenuVO vo = dao.Menu_Detail(idx);
%>
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
							<img src="http://localhost:9000/Subway/menulist/images/<%= vo.getImage_path() %>">
							<p>
								<span>샌드위치</span>
								<strong style="font-size:35px;"><%= vo.getKor_name() %></strong>
								<span class="eng_name"><%= vo.getEng_name() %></span>
								<span class="infor" style="width:373px;"><%= vo.getMenu_summary() %></span>
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
								<td><%= vo.getWeight() %></td>
								<td><%= vo.getKcal() %></td>
								<td><%= vo.getSugars() %></td>
								<td><%= vo.getProtein() %></td>
								<td><%= vo.getSaturated_fat() %></td>
								<td><%= vo.getNatrium() %></td>
							</tr>
						</table>
						<div>
							<span>※ 샌드위치 영양정보 : 기본야채 5종(양상추, 토마토, 양파, 피망, 오이) 및 제품에 따른 미트류 포함, 치즈 및 소스 제외, 15cm 위트 브레드 기준</span>
							<span>※ 괄호 안 %는 1일 영양소 기준치에 대한 비율</span>
						</div>
					</section>
					<section class="order_btn">
					<form action="order_confirm.jsp" name="order_detail" method="post">
						<button type="button" class="btn_style" id="modal_btn" data-toggle="modal" data-target="#myModal">주문 시작하기<!-- <img src="http://localhost:9000/Subway/order/order_images/icon_reg.png"> --></button>
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">
									
									<div class="modal-content" style="background-color:#ffc300; border-radius:30px;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 id="h3style">빵 길이 선택</h3>
											<span class="option_style" id="sub_option">15cm</span>
										</div>
										<div class="modal-body" id="modal-body">
											<input type="radio" name="sub" class="btn_radio" id="15cm" value="15cm" style="outline:none; margin:0;" checked><label class="label_sub1">&nbsp;&nbsp;15cm</label><br>
											<input type="radio" name="sub" class="btn_radio" id="30cm" value="30cm" style="outline:none; margin:0;"><label class="label_sub2">&nbsp;&nbsp;30cm</label><br><br><br>
											<button type="button" id="next1" data-toggle="modal" data-target="#myModal2">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							<div class="modal fade" id="myModal2" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px; border-radius:30px;">
									
									<div class="modal-content" style="background-color:#ffc300; border-radius:30px;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 id="h3style">빵 선택</h3>
											<span class="option_style" id="bread_option">빵을 선택하세요.</span>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="bread_list">
												<li id="bread_1">
													<input type="radio" name="bread_choice" id="bread_01" value="허니오토"><label for="bread_01" class="bread_01"></label>
													<span>허니오트</span>
												</li>
												<li id="bread_2">
													<input type="radio" name="bread_choice" id="bread_02" value="하티"><label for="bread_02" class="bread_02"></label>
													<span>하티</span>
												</li>
												<li id="bread_3">
													<input type="radio" name="bread_choice" id="bread_03" value="위트"><label for="bread_03" class="bread_03"></label>
													<span>위트</span>
												</li>
												<li id="bread_4">
													<input type="radio" name="bread_choice" id="bread_04" value="파마산 오레가노"><label for="bread_04" class="bread_04"></label>
													<span>파마산 오레가노</span>
												</li>
												<li id="bread_5">
													<input type="radio" name="bread_choice" id="bread_05" value="화이트"><label for="bread_05" class="bread_05"></label>
													<span>화이트</span>
												</li>
												<li id="bread_6">
													<input type="radio" name="bread_choice" id="bread_06" value="플랫 브레드"><label for="bread_06" class="bread_06"></label>
													<span>플랫 브레드</span>
												</li>
												
											</ul>
											<button type="button" id="prev1" data-toggle="modal" data-target="#myModal">이전</button>
											<button type="button" id="next2" data-toggle="modal" data-target="#myModal3">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade" id="myModal3" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300; border-radius:30px;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 id="h3style">치즈 선택</h3>
											<span class="option_style" id="cheese_option">치즈를 선택하세요.</span>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="cheese_list">
												<li id="cheese_1">
													<input type="radio" name="cheese_choice" id="cheese_01" value="아메리칸 치즈"><label for="cheese_01" class="cheese_01"></label>
													<span>아메리칸 치즈</span>
												</li>
												<li id="cheese_2">
													<input type="radio" name="cheese_choice" id="cheese_02" value="슈레드 치즈"><label for="cheese_02" class="cheese_02"></label>
													<span>슈레드 치즈</span>
												</li>
												<li id="cheese_3">
													<input type="radio" name="cheese_choice" id="cheese_03" value="모짜렐라 치즈"><label for="cheese_03" class="cheese_03"></label>
													<span>모짜렐라 치즈</span>
												</li>
											</ul>
											<button type="button" id="prev2" data-toggle="modal" data-target="#myModal2">이전</button>
											<button type="button" id="next3" data-toggle="modal" data-target="#myModal4">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							<div class="modal fade modal-dialog-scrollable" id="myModal4" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300; border-radius:30px;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 id="h3style">야채 선택 (다중 선택)</h3>
											<div class="option_style" id="vege_option">
												<span id="s1">원하는 야채를 선택하여 주세요.</span>
											</div>
										</div>
										<div class="modal-body modal-body-scroll" id="modal-body">
											<label>생야채</label>
											<ul class="vegetable_list_01">
												<li id="vegetable_1">
													<input type="checkbox" name="vegetable_choice" id="vegetable_01" value="양상추"><label for="vegetable_01" class="vegetable_01"></label>
													<span>양상추</span>
												</li>
												<li id="vegetable_2">
													<input type="checkbox" name="vegetable_choice" id="vegetable_02" value="토마토"><label for="vegetable_02" class="vegetable_02"></label>
													<span>토마토</span>
												</li>
												<li id="vegetable_3">
													<input type="checkbox" name="vegetable_choice" id="vegetable_03" value="오이"><label for="vegetable_03" class="vegetable_03"></label>
													<span>오이</span>
												</li>
												<li id="vegetable_4">
													<input type="checkbox" name="vegetable_choice" id="vegetable_04" value="피망"><label for="vegetable_04" class="vegetable_04"></label>
													<span>피망</span>
												</li>
												<li id="vegetable_5">
													<input type="checkbox" name="vegetable_choice" id="vegetable_05" value=양파><label for="vegetable_05" class="vegetable_05"></label>
													<span>양파</span>
												</li>
											</ul>
											<label>절임류</label>
											<ul class="vegetable_list_02">
												<li id="vegetable_6">
													<input type="checkbox" name="vegetable_choice" id="vegetable_06" value="피클"><label for="vegetable_06" class="vegetable_06"></label>
													<span>피클</span>
												</li>
												<li id="vegetable_7">
													<input type="checkbox" name="vegetable_choice" id="vegetable_07" value="올리브"><label for="vegetable_07" class="vegetable_07"></label>
													<span>올리브</span>
												</li>
												<li id="vegetable_8">
													<input type="checkbox" name="vegetable_choice" id="vegetable_08" value="할라피뇨"><label for="vegetable_08" class="vegetable_08"></label>
													<span>할라피뇨</span>
												</li>
											</ul>
											<button type="button" id="prev3" data-toggle="modal" data-target="#myModal3">이전</button>
											<button type="button" id="next4" data-toggle="modal" data-target="#myModal5">확인</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade" id="myModal5" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300; border-radius:30px;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 id="h3style">소스/시즈닝 선택</h3>
											<span class="option_style" id="sau_option">소스/시즈닝을 선택하여 주세요.</span>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="sauce_list">
												<li id="sauce_1">
													<input type="radio" name="sauce_choice" id="sauce_01" value="머스타드"><label for="sauce_01" class="sauce_01"></label>
													<span>머스타드</span>
												</li>
												<li id="sauce_2">
													<input type="radio" name="sauce_choice" id="sauce_02" value="레드와인식초"><label for="sauce_02" class="sauce_02"></label>
													<span>레드와인식초</span>
												</li>
												<li id="sauce_3">
													<input type="radio" name="sauce_choice" id="sauce_03" value="스위트 어니언"><label for="sauce_03" class="sauce_03"></label>
													<span>스위트 어니언</span>
												</li>
												<li id="sauce_4">
													<input type="radio" name="sauce_choice" id="sauce_04" value="허니 머스타드"><label for="sauce_04" class="sauce_04"></label>
													<span>허니 머스타드</span>
												</li>
												<li id="sauce_5">
													<input type="radio" name="sauce_choice" id="sauce_05" value="스위트 칠리"><label for="sauce_05" class="sauce_05"></label>
													<span>스위트 칠리</span>
												</li>
												<li id="sauce_6">
													<input type="radio" name="sauce_choice" id="sauce_06" value="스모크 바비큐"><label for="sauce_06" class="sauce_06"></label>
													<span>스모크 바비큐</span>
												</li>
											</ul>
											<button type="button" id="prev4" data-toggle="modal" data-target="#myModal4">이전</button>
											<button type="button" id="next5" data-toggle="modal" data-target="#myModal6">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade" id="myModal6" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300; border-radius:30px;">
										<div class="modal-header" id="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 id="h3style">추가 선택 (다중 선택 가능)</h3>
											<span class="option_style" id="side_option">원하는 추가 선택 제품을 선택하여 주세요.</span>
										</div>
										<div class="modal-body" id="modal-body">
											<ul class="side_list">
												<li id="side_1">
													<input type="radio" name="side_choice" id="side_01" value="에그마요"><label for="side_01" class="side_01"></label>
													<span>에그마요</span>
												</li>
												<li id="side_2">
													<input type="radio" name="side_choice" id="side_02" value="오믈렛"><label for="side_02" class="side_02"></label>
													<span>오믈렛</span>
												</li>
												<li id="side_3">
													<input type="radio" name="side_choice" id="side_03" value="아보카도"><label for="side_03" class="side_03"></label>
													<span>아보카도</span>
												</li>
												<li id="side_4">
													<input type="radio" name="side_choice" id="side_04" value="베이컨"><label for="side_04" class="side_04"></label>
													<span>베이컨</span>
												</li>
												<li id="side_5">
													<input type="radio" name="side_choice" id="side_05" value="페퍼로니"><label for="side_05" class="side_05"></label>
													<span>페퍼로니</span>
												</li>
											</ul>
											<button type="button" id="prev5" data-toggle="modal" data-target="#myModal5">이전</button>
											<button type="button" id="next6" data-toggle="modal" data-target="#myModal7">다음</button>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="modal fade modal-dialog-scrollable" id="myModal7" role="dialog">
								<div class="modal-dialog modal-dialog-centered" style="width:900px;">
									
									<div class="modal-content" style="background-color:#ffc300; border-radius:30px;">
										<div>
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 id="h3set_style">세트 선택</h3>
										</div>
										<div class="modal-body" id="modal-body">
											<div>
												<input type="radio" name="single_set" id="single" class="btn_radio" value="단품" style="outline:none; margin:0;"><label>&nbsp;&nbsp;단품</label>
												<input type="radio" name="single_set" id="set" class="btn_radio" value="세트" style="outline:none; margin:0;"><label>&nbsp;&nbsp;세트</label>
											</div>
										</div>
										<div class="modal-body" id="modal-body">
											<div>
												<h3 id="h3style" style="text-align:left; margin-left:20px;">쿠키 세트 선택</h3>
												<span class="set_option_style" id="set_option" style="margin-left:20px;">구성품을 선택해주세요.</span>
												<span class="set_option_style" id="set_option2"></span>
												<span id="set_price"></span>
												<input type="hidden" name="set_price_hidden" id="set_price_hidden" value="set_price_hidden">
											</div>
										</div>
										<div class="modal-body modal-body-scroll-cookie" id="modal-body">
											<div>
												<h3>쿠키</h3>
												<ul class="cookie_list">
													<li><input type="radio" name="cookie_choice" id="cookie_06" value="민트초코 쿠키"><label for="cookie_06">민트초코 쿠키</label></li>
													<li><input type="radio" name="cookie_choice" id="cookie_01" value="초코칩 쿠키"><label for="cookie_01">초코칩 쿠키</label></li>
													<li><input type="radio" name="cookie_choice" id="cookie_02" value="더블 초코칩 쿠키"><label for="cookie_02">더블 초코칩 쿠키</label></li>
													<li><input type="radio" name="cookie_choice" id="cookie_03" value="오트밀 레이즌 쿠키"><label for="cookie_03">오트밀 레이즌 쿠키</label></li>
													<li><input type="radio" name="cookie_choice" id="cookie_04" value="라즈베리 치즈케익 쿠키"><label for="cookie_04">라즈베리 치즈케익 쿠키</label></li>
													<li><input type="radio" name="cookie_choice" id="cookie_05" value="화이트 초코 마카다미아 쿠키"><label for="cookie_05">화이트 초코 마카다미아 쿠키</label></li>
												</ul>
												<h3>음료</h3>
												<ul class="bevarage_list">
													<li><input type="radio" name="beverage_choice" id="beverage_01" value="탄산음료 16oz"><label for="beverage_01">탄산음료 16oz</label></li>
													<li><input type="radio" name="beverage_choice" id="beverage_02" value="탄산음료 22oz"><label for="beverage_02">탄산음료 22oz</label></li>
												</ul>
											</div>
										</div>
										<div class="modal-footer">
											<input type="hidden" name="idx" value="<%= idx %>">
											<button type="button" id="prev6" data-toggle="modal" data-target="#myModal6">이전</button>
											<button type="button" id="next7" data-toggle="modal">다음</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>