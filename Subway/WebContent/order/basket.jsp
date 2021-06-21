<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.vo.*,java.util.*,com.subway.dao.*"%>
<%
	MenuDAO menudao = new MenuDAO();
	SessionVO smember = (SessionVO) session.getAttribute("svo");
	String price = request.getParameter("count_price");
	ArrayList<OrderVO> vo = menudao.selectBasket(smember.getEmail());
	
	
	
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
			
			<% for(int i=0; i<vo.size(); i++){ %>
			<div class="menu_section section<%=i%>">
				<input type="hidden" id="count_result_hidden_<%=i %>" value="1">
				<input type="checkbox" name="menu_checkbox" id="menu_checkbox<%=i %>" class="menu_radio" value="menu_idx_<%=i+1 %>">
				<input type="hidden" id="tatal_price_hidden<%=i %>" value="<%= vo.get(i).getPrice() %>">
				<label class="menu_text"><%= vo.get(i).getKor_name() %></label><br>
				<span class="choice_text">&nbsp;&nbsp;<%= vo.get(i).getSub() %>, <%= vo.get(i).getBread_choice() %>, <%= vo.get(i).getCheese_choice() %>, <%=vo.get(i).getVegetable_list() %>, <%= vo.get(i).getSauce_choice() %></span><br>
				<strong class="price_text">총 금액 출력</strong>
				<img src="http://localhost:9000/Subway/menulist/images/<%= vo.get(i).getImage_path() %>" class="menu_image">
				<br><br><br>
				<div class="line"></div>
				<br><br>
				<span class="add">추가</span>&nbsp;&nbsp;&nbsp;<span><% if(vo.get(i).getSide_choice() != null) { %><%= vo.get(i).getSide_choice() %> <% } %></span>
				<span class="add_price">추가 금액 출력</span><br><br><br>
				<span class="add">추가</span>&nbsp;&nbsp;&nbsp;<span><%= vo.get(i).getCookie_choice() %>, <%= vo.get(i).getBeverage_choice() %></span>
				<span class="add_price"><% if(vo.get(i).getBeverage_choice().equals("탄산음료 16oz")) { %> 1900원 <% } else {%> 2100원 <% } %></span>
				<br><br>
				<div class="line"></div>
				<br><br>
	
					<span class="count">수량</span>
					<input type="button" id="minus_<%=i %>" class="minus_1">
					<span id="count_result_<%=i %>" class="count_result_1">1</span>
					<input type="button" id="plus_<%=i %>" class="plus_1">
					
					<div class="price">
						<span class="total_price_text">총 주문금액</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span id="total_price_<%=i%>"><%= vo.get(i).getPrice() %></span><span class="won">원</span>
					</div>
					<br><br>
					
				</div>
				<br><br><br>
				
				
				
				<% } %>
				<div class="bottom_section">
				<form name="basketsend" action="order_final_basket.jsp" method="post"> 
						<input type="hidden" name="menu_count_hidden" id="menu_count_hidden" value="1">
						<br><br>
						<span class="price_checked">최종 결제 금액</span><span id="bottom_total_price"> 금액 출력</span><span class="won_1">원</span>
						<button type="submit" name="order" class="btn_order">주문하기</button>
						<br><br><br>
				</form>
			</div> 
			<br><br><br>
			
			
		</div>
		
		
		
		<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>