<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지1</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/board.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
</head>
<body>
	<!-- header start -->
	<jsp:include page="../../main/header.jsp"></jsp:include>
	<!-- header end -->
	<!-- content -->
	<div id="content">
		<!-- 뉴스ㆍ공지사항 view s -->
		<div class="news_view_wrapper">
			<div class="ncontent">
				<h2 class="title">써브웨이 2021년 5월 가격 인상 안내</h2>
				<div class="date">2021.05.03 23:25</div>

				<div class="news_view_conten">
					<!-- <div class="img"><img src="../images/temp/temp_news_view.jpg" /></div> -->
					<div class="text_wrap">
						<p>
							<img
								src="../../board/images/210427_공지사항_가격인상(최종)_20210503112513828.jpg"
								style="width: 800px;"><br>
						</p>
					</div>
				</div>

				<!-- 첨부파일 -->

				<!--// 첨부파일 -->

				<div class="btn_list">
					<a href="notice_list.jsp" onclick="view.list();return false;">목록보기</a>
				</div>

				<!-- 우측 영역 -->
				<div class="board_right">
					<!-- 공지사항 영역 -->
					<ul class="notice">
						<li><a href="#" onclick="view.view(244)">써브웨이 2021년 5월 가격
								인상 안내</a></li>
						<li><a href="#" onclick="view.view(241)">써브웨이와 함께하는 JTBC
								'라이브온'</a></li>
						<li><a href="#" onclick="view.view(232)">써브웨이 앱 출시 및 앱 사용
								불가 매장 안내</a></li>
						<li><a href="#" onclick="view.view(220)">써브웨이 그릴드 랩 &amp;
								파니니 일부 매장 판매 안내 </a></li>
						<li><a href="#" onclick="view.view(214)">써브웨이 모바일 상품권 이용
								안내의 건</a></li>
						<li><a href="#" onclick="view.view(190)">고객 경험 설문조사 프로그램
								안내</a></li>
					</ul>
					<!--// 공지사항 영역 -->

					<!-- 이전,다음글 영역 -->
					<ul class="board_nav">

						<li><strong>써브웨이 2021년 5월 가격 인상 안내</strong></li>
						<li class="next"><a href="#" onclick="view.view(243)">써브웨이
								고객센터 2021년 설 연휴 휴무 안내</a></li>
					</ul>
					<!--// 이전,다음글 영역 -->
				</div>
				<!--// 우측 영역 -->
			</div>
		</div>
		<!--// 뉴스ㆍ공지사항 view e -->
	</div>
	<!-- content end -->
	<!-- footer start -->
	<jsp:include page="../../main/footer.jsp"></jsp:include>
	<!-- footer end -->
</body>
</html>