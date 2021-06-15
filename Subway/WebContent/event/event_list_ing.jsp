<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/event.css">
</head>
<body>
	<div class="event_list_content">
		<ul id="eventListContent">
			<li><a
				href="http://localhost:9000/Subway/event/event_content_cpn.jsp"
				onclick="view.view(192);return false;">
					<div class="event_img">
						<img src="../event/images/cpn_btm.jpg" alt="신규회원 할인">
					</div>
					<div class="event_info">
						<strong class="title">6월 신규회원 할인!</strong>
						<div class="date">
							<em>2021.06.01 ~ 2021.06.30</em>
						</div>
						<p class="ev_close">&nbsp;</p>
					</div>
			</a></li>
			<li><a
				href="http://localhost:9000/Subway/event/event_content_2.jsp"
				onclick="view.view(191);return false;">
					<div class="event_img">
						<img src="../event/images/event_370x192_20210503055916911.jpg"
							alt="이달의 썹!프라이즈!">
					</div>
					<div class="event_info">
						<strong class="title">이달의 썹!프라이즈!</strong>
						<div class="date">
							<em>2021.05.04 ~ 2021.06.30</em>
						</div>
						<p class="ev_close">&nbsp;</p>
					</div>
			</a></li>
			<li><a
				href="http://localhost:9000/Subway/event/event_content_3.jsp"
				onclick="view.view(186);return false;">
					<div class="event_img">
						<img src="../event/images/event_370x192_20201113042155863.jpg"
							alt="써브웨이 아침메뉴!">
					</div>
					<div class="event_info">
						<strong class="title">써브웨이 아침메뉴!</strong>
						<div class="date">
							<em>2020.11.16 ~ </em>
						</div>
						<p class="ev_close">&nbsp;</p>
					</div>
			</a></li>
			<li><a href="#" onclick="view.view(180);return false;">
					<div class="event_img">
						<img src="../event/images/event_370x192_20201006035853185.jpg"
							alt="말이 안 나올 땐 손으로 주문하자!">
					</div>
					<div class="event_info">
						<strong class="title">말이 안 나올 땐 손으로 주문하자!</strong>
						<div class="date">
							<em>2020.10.16 ~ </em>
						</div>
						<p class="ev_close">&nbsp;</p>
					</div>
			</a></li>
		</ul>
		</form>
	</div>
</body>
</html>