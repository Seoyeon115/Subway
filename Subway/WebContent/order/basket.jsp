<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.vo.*"%>
<%
	session = request.getSession(false);
	OrderVO vo = (OrderVO) session.getAttribute("ordervo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/basket.css">
</head>
<body>
		<jsp:include page="../main/header.jsp"></jsp:include>
		
		
		<div  style="background-color:#F6F6F6; margin:auto;" >
			<div class="main_text">장바구니</div>
			<div class="section">
				<div class="pickup_shop"><span class="pickup_shop_text">여기에 지점 출력</span></div>
				<p class="Explanation">최근 14일 이내 담은 상품만 확인 가능합니다.</p>
				<div class="section-1">
					<input type="radio" id="allselect" class="allselect"><label class="allselect_text">전체선택</label>
					<button type="button" id="choice_delete" class="choice_delete">선택삭제</button>
				</div>
				<br>
			</div>
			
			<div class="menu_section section">
				<input type="radio" id="menu_radio" class="menu_radio"><label class="menu_text"><%= vo.getKor_name() %></label><br>
				<span class="choice_text">&nbsp;&nbsp;<%= vo.getSub() %>, <%= vo.getBread_choice() %>, <%= vo.getCheese_choice() %>, <%= vo.getVegetable_list() %>, <%= vo.getSauce_choice() %></span><br>
				<strong class="price_text">총 금액 출력</strong>
				<img src="http://localhost:9000/Subway/menulist/images/<%= vo.getImage_path() %>" class="menu_image">
				<br><br><br>
				<div class="line"></div>
				<br><br>
				<span class="add">추가</span>&nbsp;&nbsp;&nbsp;<span><%= vo.getSide_choice() %></span>
				<span class="add_price">추가 금액 출력</span><br><br><br>
				<span class="add">추가</span>&nbsp;&nbsp;&nbsp;<span><%= vo.getCookie_choice() %>, <%= vo.getBeverage_choice() %></span>
				<span class="add_price"><% if(vo.getBeverage_choice().equals("탄산음료 16oz")) { %> 1900원 <% } else {%> 2100원 <% } %></span>
				<br><br>
				<div class="line"></div>
				<br><br>
				<span class="count">수량</span>
				<input type="button" onclick="minus" id="minus">
				<span id="count_result">1</span>
				<input type="button" onclick="plus" id="plus">
				
				<div class="price">
					<span class="total_price_text">총 주문금액</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span id="total_price">금액 출력</span><span class="won">원</span>
				</div>
				<br><br>
			</div>
			<br><br><br>
			<div class="bottom_section">
				<br><br>
				<span class="price_checked">최종 결제 금액</span><span id="bottom_total_price"> 금액 출력</span><span class="won_1">원</span>
				<button type="button" name="order" class="btn_order">주문하기</button>
				<br><br><br><br>
			</div>
			
			
		</div>
		
		
		
		<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>