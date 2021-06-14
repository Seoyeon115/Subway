<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<%
	String idx = request.getParameter("idx");
	MenuDAO dao = new MenuDAO();
	MenuVO vo = dao.Drink_Detail(idx);
	
	session.setAttribute("ordervo", vo);
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
	<script>
		$(document).ready(function(){
			$("#minus").click(function(){
				if($("#count_result").val() > 1){
					$("#count_result").val(parseInt($("#count_result").val())-1);
					$("#count_price").val(parseInt($("#count_price").val())-<%= vo.getPrice()%>);
				}
			});
			$("#plus").click(function(){
				$("#count_result").val(parseInt($("#count_result").val())+1);
				$("#count_price").val(<%= vo.getPrice()%>+parseInt($("#count_price").val()));
			});
			$("#orderBtn").click(function(){
				order_drink_detail.submit();
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
					<li><a href="http://localhost:9000/Subway/order/order_cookie.jsp">쿠키</a></li>
					<li class="drink"><a href="http://localhost:9000/Subway/order/order_drink.jsp">음료</a></li>
				</ul>
			</div>
			<div class="menu_sandwich">
				<div class="order_detail">
					<article class="menu_inform">
						<div>
							<img src="http://localhost:9000/Subway/order/order_images/<%= vo.getImage_path()%>">
							<p>
								<strong><%= vo.getKor_name() %></strong>
								<span class="eng_name"><%= vo.getEng_name() %></span>
							</p>
						</div>
					</article>
					<section class="order_price">
					<form action="order_final.jsp?idx=<%=vo.getIdx()%>" name="order_drink_detail" method="post">
						<div class="count">
							<span>수량</span>
							<input type="button" onclick="minus" id="minus">
							<input type="text" id="count_result" name="count_result" value="1" readonly>
							<input type="button" onclick="plus" id="plus">
						</div>
						<div class="price">
							<span>최종 결제 금액</span>
							<input type="text" id="count_price" name="count_price" value="<%= vo.getPrice()%>" readonly><span>원</span>
						</div>
					</form>
					</section>
					<section class="order_btn">
						<button type="button" class="btn_style2"onclick="location.href='basket.jsp?idx=<%=idx%>'">장바구니</button>
						<button type="button" class="btn_style" id="orderBtn" onclick="location.href='http://localhost:9000/Subway/order/order_final.jsp?idx=<%=vo.getIdx()%>'">주문하기</button>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>