<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*"%>
<%
	String bid = request.getParameter("bid");
String rno = request.getParameter("rno");

BoardDAO dao = new BoardDAO();
BoardVO vo = dao.getContent(bid);
String content = vo.getBcontent().replace("<br>", "\r\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<style>
span#fname {
	width: 150px;
	display: inline-block;
	font-size: 13px;
	margin-left: -370px;
	background-color: white;
	padding: 2px 0 2px 2px;
}

div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	height: 1150px;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
}
</style>
</head>
<body>
	<!-- header start -->
	<jsp:include page="../../main/header.jsp"></jsp:include>
	<!-- header end -->

	<!-- content -->
	<div class="bor">
	
	</div>
	<!-- content end -->

	<!-- footer start -->
	<jsp:include page="../../main/footer.jsp"></jsp:include>
	<!-- footer end -->

</body>
</html>