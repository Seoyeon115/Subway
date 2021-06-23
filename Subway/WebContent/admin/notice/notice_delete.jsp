<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*"%>
<%
	String bid = request.getParameter("bid");
	String rno = request.getParameter("rno");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
<title>공지사항</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/board_write.css">
</head>
<style>
div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	height: 1150px;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
}
h3{
	margin:100px 0 50px 0;
}

</style>
<body>
	<!-- header start -->
	<jsp:include page="../../main/header.jsp"></jsp:include>
	<!-- header end -->
	
	<!-- content -->
	<div class="bor">
		<div class="content">
			<section class="board_delete">
				<!-- <h1 class="title">공지사항 삭제</h1> -->
				<div class="content_layout">
					<h3>정말로 삭제하시겠습니까?</h3>
					<!-- <img src="http://localhost:9000/Subway/board/images/trash_can.jpg"> -->
					<div>
						<a href="noticeDeleteProcess.jsp?bid=<%=bid%>"><button
								type="submit" class="btn_style2" id="btnDelete">삭제</button></a> <a
							href="notice_content.jsp?bid=<%=bid%>&rno=<%=rno%>"><button
								class="btn_style2">이전페이지</button></a> <a href="http://localhost:9000/Subway/board/notice_list.jsp"><button
								class="btn_style2">리스트</button></a>
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- content end -->
	
	<!-- footer start -->
	<jsp:include page="../../main/footer.jsp"></jsp:include>
	<!-- footer end -->

</body>
</html>