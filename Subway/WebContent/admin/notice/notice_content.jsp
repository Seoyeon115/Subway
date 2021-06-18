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

.btn_right {
	float: right;
	margin-bottom: 10px;
}

.btn_style2 {
	background-color: #009223;
	border: 1px solid #009223;
	border-radius: 3px;
	font-size: 14px;
	font-weight: 900;
	color: white;
	padding: 5px 10PX;
	margin: 0px 0px;
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

						<!-- 첨부파일 -->

						<!--// 첨부파일 -->
						<!-- 버튼list -->
						<div>
							<div class="btn_list">
								<a href="http://localhost:9000/Subway/board/notice_list.jsp" onclick="view.list();return false;">목록보기</a>
							</div>
							<div class="btn_right">
								<a href="notice_update.jsp?bid=<%=bid%>&rno=<%=rno%>"><button
										type="button" class="btn_style2">수정</button></a> <a
									href="notice_delete.jsp?bid=<%=bid%>&rno=<%=rno%>"><button
										type="button" class="btn_style2">삭제</button></a>
							</div>
						</div>
						<!--// 버튼list -->
						<!-- 우측 영역 -->
						<!--  <div class="board_right">-->
							<!-- 공지사항 영역 -->
							<!--<ul class="notice">
								<li><a href="#" onclick="view.view(244)">써브웨이 2021년 5월
										가격 인상 안내</a></li>
								<li><a href="#" onclick="view.view(241)">써브웨이와 함께하는
										JTBC '라이브온'</a></li>
								<li><a href="#" onclick="view.view(232)">써브웨이 앱 출시 및 앱
										사용 불가 매장 안내</a></li>
								<li><a href="#" onclick="view.view(220)">써브웨이 그릴드 랩
										&amp; 파니니 일부 매장 판매 안내 </a></li>
								<li><a href="#" onclick="view.view(214)">써브웨이 모바일 상품권
										이용 안내의 건</a></li>
								<li><a href="#" onclick="view.view(190)">고객 경험 설문조사
										프로그램 안내</a></li>
							</ul> -->
							<!--// 공지사항 영역 -->

							<!-- 이전,다음글 영역 -->
							<!-- <ul class="board_nav">
								<li><strong>써브웨이 2021년 5월 가격 인상 안내</strong></li>
								<li class="next"><a href="#" onclick="view.view(243)">써브웨이
										고객센터 2021년 설 연휴 휴무 안내</a></li>
							</ul> -->
							<!--// 이전,다음글 영역 -->
						</div>
						<!--// 우측 영역 -->
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