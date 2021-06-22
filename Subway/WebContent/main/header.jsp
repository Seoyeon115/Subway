<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.subway.vo.SessionVO" %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div>
			<nav>
			<% if(svo == null){ %>
				<a href="http://localhost:9000/Subway/main/subway_main.jsp"><img src="http://localhost:9000/Subway/images/subway.PNG"></a>
				<ul>
					<li><a href="http://localhost:9000/Subway/member/login.jsp">로그인 </a><div></div></li>
					<li><a href="http://localhost:9000/Subway/member/join.jsp">회원가입 </a><div></div></li>
					<li><a href="http://localhost:9000/Subway/member/Mypage.jsp">마이페이지 </a></li>
				</ul>
			<% }else{ %>
				<%if(svo.getEmail().equals("admin@naver.com")) {%>
					<a href="http://localhost:9000/Subway/main/subway_main.jsp"><img src="http://localhost:9000/Subway/images/subway.PNG"></a>
					<ul>
						<li><a href="http://localhost:9000/Subway/member/logout.jsp">로그아웃 </a><div></div></li>
						<li><a href="http://localhost:9000/Subway/admin/admin.jsp">Admin </a></li>
					</ul>
				<%}else {%>
					<a href="http://localhost:9000/Subway/main/subway_main.jsp"><img src="http://localhost:9000/Subway/images/subway.PNG"></a>
					<ul>
						<li><a href="http://localhost:9000/Subway/member/logout.jsp">로그아웃 </a><div></div></li>
						<li><a href="http://localhost:9000/Subway/member/Mypage.jsp">마이페이지 </a><div></div></li>
						<li><a href="http://localhost:9000/Subway/order/basket.jsp">장바구니</a></li>
					</ul>
				<% } %>
			<% } %>
			</nav>
		</div>
		<div>
			<ul>
				<li><a href="../menulist/sandwich.jsp">메뉴소개</a></li>
				<li><a href="http://localhost:9000/Subway/method/orderstore_test.jsp">이용방법</a></li>
				<li><a href="http://localhost:9000/Subway/board/notice_list.jsp">공지사항</a></li>
				<li><a href="http://localhost:9000/Subway/event/event_list.jsp">이벤트</a></li>
				<li><a href="http://localhost:9000/Subway/order/order_map.jsp">온라인 주문</a></li>
			</ul>
		</div>
		
	</header>
</body>
</html>