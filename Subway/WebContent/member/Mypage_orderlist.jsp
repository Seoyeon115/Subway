<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<% 
	String email = request.getParameter("email");
	OrderDAO dao = new OrderDAO();
	ArrayList<FinalOrderVO> list = dao.getOrderlist(email);
	ArrayList<OrderVO> ovo = dao.selectOrder(email);
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_orderlist.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<div class="orderlist_text">
			<h1>최근 주문 내역</h1>
			<div class="orderlist_text2">최근 6개월 이내 고객님의 주문내역입니다.</div>
			<div class="orderlist_text3">주문 내역을 Tab하시면 상세조회를 할 수 있습니다.</div>
		</div>
		<% for(int i=0;i<list.size();i++){ %>
		<div class="orderlist_content">
			<table>
					<tr>
						<th>주문번호</th>
						<td><input type="text" name="ordernum" id="ordernum" value="<%=list.get(i).getO_NO()%>" readonly></td>
					</tr>
					<tr>
						<th>식사방법</th>
						<td><input type="text" name="takeinout" id="takeinout" value="<%=list.get(i).getO_EAT()%>" readonly></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text" name="hp" id="hp" value="<%=list.get(i).getHP()%>" readonly></td>
					</tr>
					<tr>
						<th>주문시 요청사항</th>
						<td><input type="text" name="message" id="message" value="<%=list.get(i).getO_MESSAGE()%>" readonly></td>
					</tr>
					<tr>
						<th>수량</th>
						<td><input type="text" name="amt" id="amt" value="<%=list.get(i).getO_AMT()%>개" readonly></td>
					</tr>
					<tr>
						<th>주문금액</th>
						<td><input type="text" name="price" id="price" value="<%=list.get(i).getO_PRICE()%>원" readonly></td>
						
					</tr>
					
				
			</table>
			<div class="menu_content" style="margin:auto;" >
	
			<div class="menu_section section<%=i%>">
				<input type="hidden" id="count_result_hidden_<%=i %>" value="1">
				<label class="menu_text"><%= ovo.get(i).getKor_name() %></label><br>
				<div class="choice_text"><span class="choice_text">&nbsp;&nbsp;<%= ovo.get(i).getSub() %>, <%= ovo.get(i).getBread_choice() %>, <%= ovo.get(i).getCheese_choice() %>,<br> <%=ovo.get(i).getVegetable_list() %>, <%= ovo.get(i).getSauce_choice() %></span></div><br>
				<div class="add1"><span class="add1">추가</span>&nbsp;&nbsp;&nbsp;<span><% if(ovo.get(i).getSide_choice() != null) { %><%= ovo.get(i).getSide_choice() %> <% } %></span><br>
				<div class="add2"><span class="add2">추가</span>&nbsp;&nbsp;&nbsp;<span><%= ovo.get(i).getCookie_choice() %>, <%= ovo.get(i).getBeverage_choice() %></span></div>
				<span class="add_price"><% if(ovo.get(i).getBeverage_choice().equals("탄산음료 16oz")) { %> <br>추가금액 : 1900원 <% } else {%> <br>추가금액 : 2100원 <% } %></span></div>
				<img src="http://localhost:9000/Subway/menulist/images/<%= ovo.get(i).getImage_path() %>" class="menu_image">
					
			</div>
			</div>
		</div>
	</div>
		<% } %>	
		
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>