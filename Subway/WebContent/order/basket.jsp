<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.vo.*,java.util.*"%>
<%
	session = request.getSession(false);
	ArrayList<OrderVO>	basket = new ArrayList<OrderVO>();
	OrderVO order = (OrderVO) session.getAttribute("ordervo");
	basket.add(order);
	ArrayList<Integer> tot_price = new ArrayList<Integer>();

	
	
	for(int i=0; i<basket.size(); i++){
		if(basket.get(i).getBeverage_choice().equals("탄산음료 16oz")){
			tot_price.add( basket.get(i).getPrice() + 1900);
		}else if(basket.get(i).getBeverage_choice().equals("탄산음료 22oz")){
			tot_price.add( basket.get(i).getPrice() + 2100);
		}else {
			tot_price.add(0);
			System.out.println("tot_price 금액 계산 오류");
		}
	}
	for(int i=0; i<tot_price.size(); i++){
		System.out.println(tot_price.get(i));
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/basket.css">
<script src="../order/js/jquery-3.6.0.min.js"></script>
<script src="order.js"></script>
</head>
<body>

		<jsp:include page="../main/header.jsp"></jsp:include>
		
		<div  style="background-color:#F6F6F6; margin:auto;" >
		<br><br><br>
			<div class="section">
			<br>
			<div class="main_text">장바구니</div>
				<div class="pickup_shop"><span class="pickup_shop_text">여기에 지점 출력</span></div>
				<p class="Explanation">최근 14일 이내 담은 상품만 확인 가능합니다.</p>
				<div class="section-1">
					<input type="radio" id="allselect" class="allselect"><label class="allselect_text">전체선택</label>
					<button type="button" id="choice_delete" class="choice_delete">선택삭제</button>
				</div>
				<br>
			</div>
			
			<% for(int i=0; i<basket.size(); i++){ %>
			<div class="menu_section section">
				<input type="radio" id="menu_radio" class="menu_radio"><label class="menu_text"><%= basket.get(i).getKor_name() %></label><br>
				<span class="choice_text">&nbsp;&nbsp;<%= basket.get(i).getSub() %>, <%= basket.get(i).getBread_choice() %>, <%= basket.get(i).getCheese_choice() %>, <%=basket.get(i).getVegetable_list() %>, <%= basket.get(i).getSauce_choice() %></span><br>
				<strong class="price_text">총 금액 출력</strong>
				<img src="http://localhost:9000/Subway/menulist/images/<%= basket.get(i).getImage_path() %>" class="menu_image">
				<br><br><br>
				<div class="line"></div>
				<br><br>
				<span class="add">추가</span>&nbsp;&nbsp;&nbsp;<span><% if(basket.get(i).getSide_choice() != null) { %><%= basket.get(i).getSide_choice() %> <% } %></span>
				<span class="add_price">추가 금액 출력</span><br><br><br>
				<span class="add">추가</span>&nbsp;&nbsp;&nbsp;<span><%= basket.get(i).getCookie_choice() %>, <%= basket.get(i).getBeverage_choice() %></span>
				<span class="add_price"><% if(basket.get(i).getBeverage_choice().equals("탄산음료 16oz")) { %> 1900원 <% } else {%> 2100원 <% } %></span>
				<br><br>
				<div class="line"></div>
				<br><br>
				<span class="count">수량</span>
				<input type="button" id="minus_1">
				<span id="count_result_1">1</span>
				<input type="button" id="plus_1">
				
				<div class="price">
					<span class="total_price_text">총 주문금액</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span id="total_price"><%= tot_price.get(i) %></span><span class="won">원</span>
				</div>
				<br><br>
			</div>
			<br><br><br>
			
			<% } %>
			<div class="bottom_section">
				<br><br>
				<span class="price_checked">최종 결제 금액</span><span id="bottom_total_price"> 금액 출력</span><span class="won_1">원</span>
				<button type="button" name="order" class="btn_order">주문하기</button>
				<br><br><br>
			</div> 
			<br><br><br>
			
			
		</div>
		
		
		
		<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>