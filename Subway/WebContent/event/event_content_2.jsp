<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/event.css">
</head>
<body>
	<!-- header start -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- header end -->

	<!-- content -->
	<div id="content">
		<!-- 이벤트 view s -->
		<div class="event_view_wrapper">
			<div class="content">
				<h2 class="title">이달의 썹!프라이즈!</h2>

				<div class="date">
					<em>2021.05.04 ~ 2021.06.30</em>
				</div>

				<div class="event_view_conten">
					<!-- <div class="img"><img src="../images/temp/temp_news_event_view.jpg" /></div> -->
					<div class="text_wrap">
						<p>
							<img src="../event/images/상세_800_20210503104855910.jpg"
								style="width: 800px;"><br>
						</p>
					</div>

				</div>

				<div class="btn_list">
					<a href="#" onclick="view.list();return false;">목록보기</a>
				</div>

				<!-- 우측 영역 -->
				<div class="board_right">
					<div class="board_nav_cont">
						<a href="http://localhost:9000/Subway/event/event_content_cupon.jsp" onclick="view.view(192);return false;">
							<div class="board_nav_txt prev">
								PREV<span class="arr"></span>
							</div>
							<p class="board_nav_summary">6월 신규회원 할인</p>
							<p class="date">2021.06.01 ~ 2021.06.30</p>
							<!-- 20180208 --> <!-- 20180208 -->
							<div class="board_nav_img">
								<img src="../event/images/cupon_btm.jpg"
									alt="신규회원 할인">
							</div>
						</a>
					</div>
					<div class="board_nav_cont">
						<a href="http://localhost:9000/Subway/event/event_content_3.jsp" onclick="view.view(186);return false;">
							<div class="board_nav_txt next">
								NEXT<span class="arr"></span>
							</div>
							<p class="board_nav_summary">써브웨이 아침메뉴!</p>
							<p class="date">2020.11.16 ~</p>
							<!-- 20180208 --> <!-- 20180208 -->
							<div class="board_nav_img">
								<img src="../event/images/event_370x192_20201113042155863.jpg"
									alt="써브웨이 아침메뉴!">
							</div>
						</a>
					</div>
				</div>
				<!--// 우측 영역 -->
			</div>
		</div>
		<!--// 이벤트 view e -->
	</div>
	<!-- content end -->

	<!-- footer start -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<!-- footer end -->
</body>
</html>