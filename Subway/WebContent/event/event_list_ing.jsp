<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUBWAY EVENT</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/event.css">
</head>
<style>
#container {
	width: 1000px;
	margin: auto; /*border:1px solid red;*/
}
.slide_wrap {
	position: relative;
	width: 1000px;
	margin: auto;
	padding-bottom: 30px; /*border:1px solid green;*/
}
.slide_box {
	width: 100%;
	margin: auto;
	overflow-x: hidden; /*border:1px solid violet;*/
}
.slide_content {
	display: table;
	float: left;
	width: 1000px;
	height: 400px;
}
.slide_content.slide01 img {
	float: left;
}
.slide_content.slide02 img {
	float: left;
}
.slide_content.slide03 img {
	float: left;
}
.slide_content.slide04 img {
	float: left;
}
.slide_content.slide05 img {
	float: left;
}
.slide_btn_box>button {
	position: absolute;
	top: 50%;
	margin-top: -45px;
	width: 20px;
	height: 20px;
	font-size: 16px;
	color: #999;
	border: 1px solid #f6f6f6;
	cursor: pointer;
}
.slide_btn_box>.slide_btn_prev {
	left: -145px;
	background: url("http://localhost:9000/Subway/images/slider_arr2.png");
}
.slide_btn_box>.slide_btn_next {
	right: -145px;
	background: url("http://localhost:9000/Subway/images/slider_arr.png");
}
.slide_pagination {
	position: absolute;
	left: 50%;
	bottom: 0;
	list-style: none;
	margin: 0;
	padding: 0;
	transform: translateX(-50%);
}
.slide_pagination .dot {
	display: none;
	width: 15px;
	height: 15px;
	margin: 0 5px;
	overflow: hidden;
	background: #ddd;
	border-radius: 50%;
	transition: 0.3s;
}
.slide_pagination .dot.dot_active {
	background: #333;
}
.slide_pagination .dot a {
	display: block;
	width: 100%;
	height: 100%;
}
div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
}
.date em {
	color: #009223;
	font-size: 22px;
	font-family: font_sw;
	font-weight: bold;
	letter-spacing: -0.015em;
}
.date {
	margin-bottom: 9px;
}
.title {
	font-size: 28px;
	color: #292929;
	font-weight: bold;
	line-height: 42px;
	letter-spacing: -0.03em;
	display: block;
}
.summary {
	font-size: 16px;
	color: #666666;
	line-height: 26px;
	letter-spacing: -0.04em;
	margin-top: 27px;
}
p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}
.event_tinfo {
    margin-left: 800px;
    margin-top: 40px;
    position: relative;
    min-height: 380px;
    top: 30px;
    opacity: 0;
}
 .btn_more {
    color: #bbbbbb;
    font-weight: 300;
    font-size: 18px;
    position: absolute;
    left: 0;
    bottom: 16px;
    letter-spacing: -0.05em;
    width: 140px;
    height: 50px;
    line-height: 50px;
    background-color: #009223;
    border-radius: 50px;
    color: #fff;
    text-indent: -10px;
    margin-left: 40px;
}
.btn_more:after {
    content: '';
    background: url(../event/images/icon_arr_r01.png) 0 0 no-repeat;
    width: 20px;
    height: 20px;
    position: absolute;
    right: 10px;
    top: 18px;
}
</style>
<body>
		<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- header end -->
	
	<!-- content -->
	<div class="bor">
		<div class="content" id="content">
			<h2 class="subTitle">이벤트ㆍ프로모션</h2>
			<div class="orderstore_content" id="store_order">
				<div class="slide_wrap" style="max-width: 100%;">
					<div class="slide_box">
						<div class="slide_list clearfix">
							<div class="slide_content slide01">
								<img src="../event/images/cpn_tp.jpg" style="margin-top: 40px;">
								<div class="info_content">
									<ol>
										<li class="active" style="margin-top: 0; opacity: 1">
											<div class="event_tinfo" style="opacity: 1; top: 0px;">
												<div class="date">
													<em>2021.06.01 ~ 2021.06.30</em>
												</div>
												<strong class="title">신규회원 이벤트</strong>
												<p class="summary">6월 한달간 신규회원을 위한 이벤트 !</p>
												<a class="btn_more"
													href="http://localhost:9000/Subway/event/event_content_cpn.jsp">자세히보기</a>
											</div>
										</li>
									</ol>
								</div>
							</div>
							<div class="slide_content slide02">
								<img src="../event/images/event_770x400_20210503055916948.jpg"
									style="margin-top: 50px;">
								<div class="info_content">
									<ol>
										<li class="active" style="margin-top: 0; opacity: 1">
											<div class="event_tinfo" id="top" style="opacity: 1; top: 0px;">

												<div class="date">
													<em>2021.05.04 ~ 2021.06.30</em>
												</div>

												<strong class="title">이달의 썹!프라이즈!</strong>
												<p class="summary">
													맛도 가격도 놀라운<br>이달의 썹!프라이즈!
												</p>
												<a class="btn_more"
													href="http://localhost:9000/Subway/event/event_content_2.jsp">자세히보기</a>
											</div>
										</li>
									</ol>
								</div>
							</div>
							<div class="slide_content slide03">
								<img src="../event/images/event_770x400_20201113042155905.jpg"
									style="margin-top: 50px;">
								<div class="info_content">
									<ol>
										<li class="active" style="margin-top: 0; opacity: 1">
											<div class="event_tinfo" style="opacity: 1; top: 0px;">
												<div class="date">
													<em>2020.11.16 ~ </em>
												</div>
												<strong class="title">써브웨이 아침메뉴!</strong>
												<p class="summary">
													속은 같아도 빵은 다르게!<br>취향대로 즐기는 아침!
												</p>
												<a class="btn_more" href="#">자세히보기</a>
											</div>
										</li>
									</ol>
								</div>
							</div>
							<div class="slide_content slide04">
								<img src="../event/images/event_770x400_20201006035853218.jpg"
									style="margin-top: 50px;">
								<div class="info_content">
									<ol>
										<li class="active" style="margin-top: 0; opacity: 1">
											<div class="event_tinfo" style="opacity: 1; top: 0px;">
												<div class="date">
													<em>2020.10.16 ~ </em>
												</div>
												<strong class="title">말이 안 나올 땐 손으로 주문하자!</strong>
												<p class="summary">
													말이 안 나올 땐?<br>손으로 주문하자!
												</p>
												<a class="btn_more" href="#">자세히보기</a>
											</div>
										</li>
									</ol>
								</div>
							</div>
						</div>
						<!-- // .slide_list -->
					</div>
					<!-- // .slide_box -->
					<div class="slide_btn_box">
						<button type="button" class="slide_btn_prev"></button>
						<button type="button" class="slide_btn_next"></button>
					</div>
					<!-- // .slide_btn_box -->
					<ul class="slide_pagination"></ul>
					<!-- // .slide_pagination -->
				</div>
				<!-- // .slide_wrap -->
			</div>
	
	
			<!-- 이벤트 list s -->
			<div class="event_list_wrapper">
				<div class="content">
					<!-- tab -->
					<div class="tab_wrapper">
						<ul id="tabList">
							<li><a
								href="http://localhost:9000/Subway/event/event_list.jsp">전체</a></li>
							<li class="active"><a href="http://localhost:9000/Subway/event/event_list_ing.jsp" >진행중인 이벤트</a></li>
							<li><a href="http://localhost:9000/Subway/event/event_list_p.jsp" >종료된 이벤트</a></li>
						</ul>
					</div>
					<!--// tab -->
					<!-- 이벤트 list content s -->
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
						<a class="btn_list_more" href="#" data-listcount="31"
							onclick="view.more(this);return false;">더보기</a>
						<form id="searchForm" method="get" name="searchForm">
							<input name="page" type="hidden" value="1"> <input
								name="eventState" type="hidden" value="">
						</form>
					</div>
					<!--// 이벤트 list content s -->
				</div>
			</div>
			<!--// 이벤트 list e -->
		</div>
	</div>

	<!-- content end -->

	<!-- footer start -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<!-- footer end -->

	<script>
		(function() {
			const slideList = document.querySelector('.slide_list'); // Slide parent dom
			const slideContents = document.querySelectorAll('.slide_content'); // each slide dom
			const slideBtnNext = document.querySelector('.slide_btn_next'); // next button
			const slideBtnPrev = document.querySelector('.slide_btn_prev'); // prev button
			const pagination = document.querySelector('.slide_pagination');
			const slideLen = slideContents.length; // slide length
			const slideWidth = 1000; // slide width
			const slideSpeed = 300; // slide speed
			const startNum = 0; // initial slide index (0 ~ 4)

			slideList.style.width = slideWidth * (slideLen + 2) + "px";

			// Copy first and last slide
			let firstChild = slideList.firstElementChild;
			let lastChild = slideList.lastElementChild;
			let clonedFirst = firstChild.cloneNode(true);
			let clonedLast = lastChild.cloneNode(true);

			// Add copied Slides
			slideList.appendChild(clonedFirst);
			slideList.insertBefore(clonedLast, slideList.firstElementChild);

			// Add pagination dynamically
			let pageChild = '';
			for (var i = 0; i < slideLen; i++) {
				pageChild += '<li class="dot';
				pageChild += (i === startNum) ? ' dot_active' : '';
				pageChild += '" data-index="' + i + '"><a href="#"></a></li>';
			}
			pagination.innerHTML = pageChild;
			const pageDots = document.querySelectorAll('.dot'); // each dot from pagination

			slideList.style.transform = "translate3d(-"
					+ (slideWidth * (startNum + 1)) + "px, 0px, 0px)";

			let curIndex = startNum; // current slide index (except copied slide)
			let curSlide = slideContents[curIndex]; // current slide dom
			curSlide.classList.add('slide_active');

			/** Next Button Event */
			slideBtnNext.addEventListener('click', function() {
				if (curIndex <= slideLen - 1) {
					slideList.style.transition = slideSpeed + "ms";
					slideList.style.transform = "translate3d(-"
							+ (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";
				}
				if (curIndex === slideLen - 1) {
					setTimeout(function() {
						slideList.style.transition = "0ms";
						slideList.style.transform = "translate3d(-"
								+ slideWidth + "px, 0px, 0px)";
					}, slideSpeed);
					curIndex = -1;
				}
				curSlide.classList.remove('slide_active');
				pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList
						.remove('dot_active');
				curSlide = slideContents[++curIndex];
				curSlide.classList.add('slide_active');
				pageDots[curIndex].classList.add('dot_active');
			});

			/** Prev Button Event */
			slideBtnPrev.addEventListener('click', function() {
				if (curIndex >= 0) {
					slideList.style.transition = slideSpeed + "ms";
					slideList.style.transform = "translate3d(-"
							+ (slideWidth * curIndex) + "px, 0px, 0px)";
				}
				if (curIndex === 0) {
					setTimeout(function() {
						slideList.style.transition = "0ms";
						slideList.style.transform = "translate3d(-"
								+ (slideWidth * slideLen) + "px, 0px, 0px)";
					}, slideSpeed);
					curIndex = slideLen;
				}
				curSlide.classList.remove('slide_active');
				pageDots[(curIndex === slideLen) ? 0 : curIndex].classList
						.remove('dot_active');
				curSlide = slideContents[--curIndex];
				curSlide.classList.add('slide_active');
				pageDots[curIndex].classList.add('dot_active');
			});

			/** Pagination Button Event */
			let curDot;
			Array.prototype.forEach.call(pageDots, function(dot, i) {
				dot.addEventListener('click', function(e) {
					e.preventDefault();
					curDot = document.querySelector('.dot_active');
					curDot.classList.remove('dot_active');

					curDot = this;
					this.classList.add('dot_active');

					curSlide.classList.remove('slide_active');
					curIndex = Number(this.getAttribute('data-index'));
					curSlide = slideContents[curIndex];
					curSlide.classList.add('slide_active');
					slideList.style.transition = slideSpeed + "ms";
					slideList.style.transform = "translate3d(-"
							+ (slideWidth * (curIndex + 1)) + "px, 0px, 0px)";
				});
			});
		})();
	</script>
</body>
</html>