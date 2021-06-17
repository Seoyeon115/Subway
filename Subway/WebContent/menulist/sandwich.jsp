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
<title>메뉴소개-샌드위치</title>
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/main.css">
<script src="jquery-3.6.0.min.js"></script>
<script src="menu_change.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<div class="img01">
		<h2 class="img01_h2">Sandwich</h2>
		<p class="img01_p">
			전세계 넘버원 브랜드 Subway! <br>
			50년 전통의 세계 최고의 샌드위치를 맛보세요!
		</p>
	</div>
	<div class="detail_menu">
		<ul>
			<li><a href="sandwich.jsp"  id="all" style="color:#009223">All</a><div class="line"></div></li>
			<li><a href="sandwich_classic.jsp" id="classic">클래식</a><div class="line"></div></li>
			<li><a href="sandwich_fresh.jsp" id="fresh">프레쉬&라이트</a><div class="line"></div></li>
			<li><a href="sandwich_premium.jsp" id="premium">프리미엄</a></li>
		</ul>
	</div>
	<div class="menulist">
		<ul>
			<% for(MenuVO vo : list){ %>
				<li class="item"><a href="#"><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getImage_path() %>"></a><br>
				<strong class="tit"><%= vo.getKor_name() %></strong>
				<span class="eng"><%= vo.getEng_name() %></span>
				<span class="kcal"><%= vo.getKcal() %> kcal</span>
				<div>
					<p class="summary">
						<%= vo.getMenu_summary() %>
					</p>
				</div>
				<a href="sandwich_detail.jsp?idx=<%= vo.getIdx() %>" class="btn_view"></a>
				</li>
			<% } %>
			
		</ul>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>