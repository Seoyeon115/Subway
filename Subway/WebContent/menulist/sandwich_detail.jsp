<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.dao.*,com.subway.vo.*,java.util.*,java.sql.*"%>
<%
	String idx = request.getParameter("idx");
	MenuDAO dao = new MenuDAO();
	MenuVO vo = dao.Menu_Detail(idx);
	ArrayList<MenuVO> list = dao.getMenuList();
	
	int idx_next_int, idx_prev_int;
	int idx_int = Integer.parseInt(idx);
	if(idx_int == list.size()){
		idx_next_int = 1;
		idx_prev_int = idx_int -1;
	}else if(idx_int == 1){
		idx_next_int = idx_int +1;
		idx_prev_int = list.size();
	}else {
		idx_next_int = idx_int +1;
		idx_prev_int = idx_int -1;
	}
	
	
	String idx_next = String.valueOf(idx_next_int);
	String idx_prev = String.valueOf(idx_prev_int);
	
	MenuVO menu_prev = dao.Menu_Detail(idx_prev);
	MenuVO menu_next = dao.Menu_Detail(idx_next);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SubWay</title>
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/main.css">
</head>
<body>
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<div class="detail_name">
		<h1><%= vo.getKor_name() %></h1><br>
		<div class="detail_eng_kcal"><span class="detail_eng"><%= vo.getEng_name() %></span><div class="line"></div><span class="detail_cal"><%= vo.getKcal() %> kcal</span></div>
	</div>
	<div class="detail_image">
		<a href="sandwich_detail.jsp?idx=<%=idx_prev %>"><img src="http://localhost:9000/Subway/menulist/images/<%= menu_prev.getImage_path() %>" class="image_left" ></a>
		<a href="#"><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getImage_path() %>" style="margin:0 100px;"></a>
		<a href="sandwich_detail.jsp?idx=<%=idx_next %>"><img src="http://localhost:9000/Subway/menulist/images/<%= menu_next.getImage_path() %>" class="image_right"></a>
		
		<p class="detail_summary">
					<%= vo.getMenu_summary() %>
		</p>
		<div>
			<ul class="side_ul">
				<li><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getMaterial1_image_path() %>" class="detail_side_image">
				<p class="side_image_kor"> <%= vo.getMaterial1() %>  </p>
				</li>
				
				<li><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getMaterial2_image_path() %>" class="detail_side_image">
				<p class="side_image_kor"> <%= vo.getMaterial2() %></p>
				</li>
				<% if(vo.getMaterial3_image_path() != null) { %>
				<li><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getMaterial3_image_path() %>" class="detail_side_image">
				<p class="side_image_kor">&nbsp;&nbsp;&nbsp;&nbsp;<%= vo.getMaterial3() %></p>
				</li>
				<% } else { } %>
				
				<% if(vo.getMaterial4_image_path() != null) { %>
				<li><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getMaterial4_image_path() %>" class="detail_side_image">
				<p class="side_image_kor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= vo.getMaterial4() %></p>
				</li>
				<% } else { } %>
				
				<% if(vo.getMaterial5_image_path() != null) { %>
				<li><img src="http://localhost:9000/Subway/menulist/images/<%= vo.getMaterial5_image_path() %>" class="detail_side_image">
				<p class="side_image_kor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= vo.getMaterial5() %></p>
				</li>
				<% } else { } %>
				
			</ul>
			<p class="sub_p">
				* 매장에 따라 추천소스는 상이할 수 있습니다.<br>
				* 써브웨이가 제공하는 신선한 야채가 정량으로 제공됩니다.<br><br>

				* 제품 사진은 이미지컷입니다.
			</p>
		</div>
	</div>
	
	
	
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>