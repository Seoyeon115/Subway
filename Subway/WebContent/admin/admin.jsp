<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.SessionVO"%>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 페이지</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
</head>
<style>
div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	height: 1150px;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
}
</style>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- header end -->
	
	<!-- content -->
	<div class="bor">
		<div class="content">
			<section class="admin">
				<h1 class="title">관리자 페이지</h1>
				<article class="content_layout">
					<a href="http://localhost:9000/Subway/admin/member/member_list.jsp"><div>회원 관리</div></a>
					<a href="http://localhost:9000/Subway/board/notice_list.jsp"><div>공지사항 관리</div></a>
				</article>
			</section>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	
</body>
</html>
<% }else{ %>
	<script>
		window.alert("관리자 로그인 후 사용이 가능합니다.");
		location.href="http://localhost:9000/Subway/member/login.jsp";
	</script>
<% }%>