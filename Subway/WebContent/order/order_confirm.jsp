<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.vo.*,com.subway.dao.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String set_price = request.getParameter("set_price_hidden");
	String idx = request.getParameter("idx");
	
	MenuDAO dao = new MenuDAO();
	MenuVO menuvo = dao.Menu_Detail(idx);
	
	OrderVO vo = new OrderVO();
	vo.setSub(request.getParameter("sub"));
	vo.setBread_choice(request.getParameter("bread_choice"));
	vo.setCheese_choice(request.getParameter("cheese_choice"));
	vo.setVegetable_choice(request.getParameterValues("vegetable_choice"));
	vo.setSauce_choice(request.getParameter("sauce_choice"));
	vo.setSide_choice(request.getParameter("side_choice"));
	vo.setSingle_set(request.getParameter("single_set"));
	vo.setCookie_choice(request.getParameter("cookie_choice"));
	vo.setBeverage_choice(request.getParameter("beverage_choice"));
	vo.setIdx(idx);
	vo.setKor_name(menuvo.getKor_name());
	vo.setImage_path(menuvo.getImage_path());
	
	if(request.getParameter("sub").equals("15cm")){
		vo.setPrice(menuvo.getPrice_15());
	}else if(request.getParameter("sub").equals("30cm")) {
		vo.setPrice(menuvo.getPrice_30());
	}else {
		vo.setPrice(0);
	}


	session.setAttribute("ordervo", vo);
	
	SessionVO member = (SessionVO) session.getAttribute("svo");
	dao.insertBasket(vo,member.getEmail());
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>메뉴선택</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/order.css">
	<script src="../order/js/jquery-3.6.0.min.js"></script>
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
								<strong style="font-size:35px;"><%= menuvo.getKor_name() %></strong>
								<span class="eng_name"><%= menuvo.getEng_name() %></span>
								<span class="infor" style="width:373px;"><%= menuvo.getMenu_summary() %></span>
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
								<td><%= menuvo.getWeight() %></td>
								<td><%= menuvo.getKcal() %></td>
								<td><%= menuvo.getSugars() %></td>
								<td><%= menuvo.getProtein() %></td>
								<td><%= menuvo.getSaturated_fat() %></td>
								<td><%= menuvo.getNatrium() %></td>
							</tr>
						</table>
						<div>
							<span>※ 샌드위치 영양정보 : 기본야채 5종(양상추, 토마토, 양파, 피망, 오이) 및 제품에 따른 미트류 포함, 치즈 및 소스 제외, 15cm 위트 브레드 기준</span>
							<span>※ 괄호 안 %는 1일 영양소 기준치에 대한 비율</span>
						</div>
					</section>
					<form action="order_final.jsp?idx=<%=vo.getIdx()%>" name="order_confirm" method="post">
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
											<ul style="margin-top:13px;">
												<li>
													<a href="#" id="sub">길이 선택</a>
												</li>
												<li>
													<a href="#" id="bread">빵 선택</a>
												</li>
												<li>
													<a href="#" id="cheese">치즈 선택</a>
												</li>
												<li>
													<a href="#" id="vegetable">야채 선택</a>
												</li>
												<li>
													<a href="#" id="sauce">소스/시즈닝 선택</a>
												</li>
									
											</ul>
											<span style="font-size:12px; text-align:left; margin-top:-8px; margin-left:40px;"><%= vo.getSub() %>, <%= vo.getBread_choice() %>, <%= vo.getCheese_choice() %>, <%= vo.getVegetable_list() %>, <%= vo.getSauce_choice() %></span>
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
											<% if(vo.getSide_choice() == null){ %>
											<ul>
												<li>
													<a href="#">추가 선택</a>
												</li>
											</ul>
											<%}else{ %>
											<ul style="margin-top:13px;">
												<li>
													<a href="#">추가 선택</a>
												</li>
											</ul>
											<span style="font-size:12px; text-align:left; margin-top:-8px; margin-left:40px;"><%= vo.getSide_choice() %></span>
											<%} %>
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
											<% if(vo.getSingle_set().equals("단품")) { %>
											<ul>
												<li style="background-color:#009223;">
													<a href="#" id="singleBtn2">단품</a>
												</li>
												<li style="background-color:#F2F2F2;">
													<a href="#" style="color:#333" id="setBtn">세트</a>
												</li>
											</ul>
											<% } else { %>
											<ul id="setul" style="margin-top:13px;">
												<li style="background-color:#F2F2F2;" id="singleli">
													<a href="#" style="color:#333" id="singleBtn">단품</a>
												</li>
												<li style="background-color:#009223;" id="setli">
													<a href="#" id="setBtn2">세트</a>
												</li>
											</ul>
											<span style="font-size:12px; text-align:left; margin-top:-8px; margin-left:40px;"><%= vo.getCookie_choice() %>, <%= vo.getBeverage_choice() %></span>
											<% } %>
										</dd>
									</dl>
								</li>
							</ol>
						</section>
						<section class="order_price">
							<div class="count">
								<span>수량</span>
								<input type="button" onclick="minus" id="minus">
								<input type="text" id="count_result" name="count_result" value="1" readonly>
								<input type="button" onclick="plus" id="plus">
							</div>
							<div class="price">
								<span>최종 결제 금액</span>
								<input type="text" id="count_price" name="count_price" value="<% if(vo.getSub().equals("15cm")) { if(vo.getSingle_set().equals("단품")) { %> <%= menuvo.getPrice_15()%>
									<% }else if(vo.getSingle_set().equals("세트")) { if(set_price.equals("1900원")) { %> <%= menuvo.getPrice_15()+1900%>
									<% }else if(set_price.equals("2100원")) { %> <%= menuvo.getPrice_15()+2100%> <% } else { %> error 
									<% }}} else if(vo.getSub().equals("30cm")) { if(vo.getSingle_set().equals("단품")) { %> <%= menuvo.getPrice_30()%>
									<% }else if(vo.getSingle_set().equals("세트")) { if(set_price.equals("1900원")) { %> <%= menuvo.getPrice_30()+1900%>
									<% }else if(set_price.equals("2100원")) { %> <%= menuvo.getPrice_30()+2100%> <% } else { %> error <% }}} %>" readonly>
								<span>원</span>
							</div>
						</section>
						<section class="order_btn">
							<input type="hidden" name="idx" value="<%= idx %>">
							<button type="button" class="btn_style2"onclick="location.href='basket.jsp?idx=<%=idx%>'">장바구니</button>
							<button type="button" class="btn_style" id="orderBtn" onclick="location.href='http://localhost:9000/Subway/order/order_final.jsp?idx=<%=idx%>'">주문하기</button>
						</section>
					</form>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>