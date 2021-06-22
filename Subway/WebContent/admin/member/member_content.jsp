<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.*, com.subway.vo.*" %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){
		
	String email = request.getParameter("email");
	String rno = request.getParameter("rno");
	
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.getContent(email);
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자>회원관리>상세페이지</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/admin.css">
</head>
<style>
div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	height: 1150px;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
}
div.content>section.member_content {
    text-align: center;
    width: auto;
}
</style>
<body>
	<!-- header -->
	<jsp:include page="../../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="bor">
		<div class="content">
			<section class="member_content">
				<h1 class="title">회원 관리</h1>
				<table class="content_layout">
					<tr>
						<th>번호</th>
						<td><%= rno %></td>
						<th>아이디</th>
						<td><%= vo.getEmail() %></td>
						<th>이름</th>
						<td><%= vo.getName() %></td>
					</tr>
					<tr>
						<th>핸드폰</th>
						<td colspan="6"><%= vo.getHp() %></td>
					</tr>
					<tr>
						<th>주소</th>
						<td colspan="6"><%= vo.getAddr() %></td>
					</tr>
					<tr>
						<th>가입일자</th>
						<td colspan="6"><%= vo.getMdate() %></td>
					</tr>
					<tr>
						<th>메모</th>
						<td colspan="6"><%= vo.getPost() %></td>
					</tr>
					<tr>
						<td colspan="7"> 
							<a href="member_list.jsp"><button type="button" class="btn_style2">리스트</button></a>
							<a href="http://localhost:9000/mycgv/admin/member/admin.jsp"><button type="button" class="btn_style2">관리자홈</button></a>
						</td>
					</tr>
				</table>
			</section>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../../main/footer.jsp"></jsp:include>
</body>
</html>
<% }else{ %>
	<script>
		location.href="http://localhost:9000/Subway/member/login.jsp";
	</script>
<% }%>