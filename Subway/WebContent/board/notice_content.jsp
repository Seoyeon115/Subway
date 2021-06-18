<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*"%>
<%
String bid = request.getParameter("bid");
String rno = request.getParameter("rno");

BoardDAO dao = new BoardDAO();
BoardVO vo = dao.getContent(bid);
String content = vo.getBcontent().replace("\r\n", "<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/board.css">
<style>
div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
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
		<div id="content">
			<!-- 뉴스ㆍ공지사항 view s -->
			<div class="news_view_wrapper">
					<div class="ncontent">
						<h2 class="title"><%=vo.getBtitle()%></h2>
						<div class="date"><%=vo.getBdate()%></div>

						<div class="news_view_conten">
							<div class="text_wrap">
								<p>
									<%= content%>
									<% if (vo.getBsfile() != null) { %>
									<img src="http://localhost:9000/Subway/upload/<%=vo.getBsfile()%>"
										style="width: 800px;">
									<% } %>
								</p>
							</div>
						</div>

					</div>
			</div>
			<!--// 뉴스ㆍ공지사항 view e -->
		</div>
	</div>
	<!-- content end -->

	<!-- footer start -->
	<jsp:include page="../../main/footer.jsp"></jsp:include>
	<!-- footer end -->
</body>
</html>