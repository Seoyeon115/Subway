<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.dao.*,com.subway.vo.*,java.util.*"%>
<%
	MenuDAO dao = new MenuDAO();
	ArrayList<MenuVO> list = dao.getMenuList();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>메뉴선택</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/order.css">
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
				<ul>
					<% for(MenuVO vo : list){ %>
					<li>
						<a href="http://localhost:9000/Subway/order/order_detail.jsp?idx=<%= vo.getIdx() %>"><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getImage_path() %>">
							<p>
								<strong><%= vo.getKor_name() %></strong>
								<span class="eng_name"><%= vo.getEng_name() %></span>
								<span class="kcal"><%= vo.getKcal() %></span>
							</p>
						</a>
					</li>
					<% } %>
					
				</ul>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>