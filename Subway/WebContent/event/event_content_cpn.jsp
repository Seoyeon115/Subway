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
<style>
div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
}
.btn_list{
	margin-top: 50px;
}
</style>
<body>
	<!-- header start -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- header end -->

	<!-- content -->
	<div class="bor">
		<div id="content">
			<!-- 이벤트 view s -->
			<div class="event_view_wrapper">
				<div class="content">
					<h2 class="title">6월 신규회원 할인</h2>
	
					<div class="date">
						<em>2021.06.01 ~ 2021.06.30</em>
					</div>
	
					<div class="event_view_conten">
						<div class="text_wrap">
							<div class="evt_cont">
								<img src="../event/images/cpn_event_content.jpg"
									style="width: 800px;">
							</div>
	
						</div>
	
						<div class="btn_list">
							<a href="http://localhost:9000/Subway/event/event_list.jsp"
								onclick="view.list();return false;">목록보기</a>
						</div>
	
						<!-- 우측 영역 -->
						<div class="board_right">
							<div class="board_nav_cont">
								<a href="http://localhost:9000/Subway/event/event_content_2.jsp"
									onclick="view.view(186);return false;">
									<div class="board_nav_txt next">
										NEXT<span class="arr"></span>
									</div>
									<p class="board_nav_summary">이달의 썹!프라이즈!</p>
									<p class="date">2021.05.04 ~ 2021.06.30</p> 
									<div class="board_nav_img">
										<img src="../event/images/event_370x192_20210503055916911.jpg"
											alt="이달의 썹!프라이즈!">
									</div>
								</a>
							</div>
						</div>
						<!--// 우측 영역 -->
					</div>
				</div>
			</div>
			<!--// 이벤트 view e -->
		</div>
	</div>

	<!-- content end -->

	<!-- footer start -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<!-- footer end -->
</body>
</html>