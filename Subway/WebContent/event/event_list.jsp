<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/event.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/js/jquery/jquery_tmpl_min.js"></script>
<script type="text/javascript" src="/js/news/eventList.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		eventSlider()//이벤트ㆍ프로모션 슬라이더
	});
</script>
<script>
	<li>
</script>
</head>
<style>
</style>
<body>
	<!-- header start -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- header end -->

	<!-- content -->
	<div id="content">
		<h2 class="subTitle">이벤트ㆍ프로모션</h2>

		<!-- 이벤트ㆍ프로모션 slider s -->
		<div class="event_slider_wrapper">
			<div class="event_slider_cont">
				<div class="bx-wrapper" style="max-width: 100%;">
					<div class="bx-viewport" aria-live="polite"
						style="width: 100%; overflow: hidden; position: relative; height: 400px;">
						<ul class="evnet_slider"
							style="width: 4215%; position: relative; transition-duration: 0.5s; transform: translate3d(0px, 0px, 0px);">
							<li aria-hidden="false"
								style="float: left; list-style: none; position: relative; width: 1170px;">
								<div class="event_img">
									<img src="../event/images/cpn_tp.jpg" alt="신규회원 할인"
										onclick="view.view(192);return false;">
								</div>
								<div class="event_info" style="opacity: 1; top: 0px;">
									<div class="date">
										<em>2021.06.01 ~ 2021.06.30</em>
									</div>
									<strong class="title">신규회원 이벤트</strong>
									<p class="summary">6월 한달간 신규회원을 위한 이벤트 !</p>
									<a class="btn_more"
										href="http://localhost:9000/Subway/event/event_content_cpn.jsp"
										onclick="view.view(192);return false;">자세히보기</a>
								</div>
							</li>
							<li aria-hidden="true"
								style="float: left; list-style: none; position: relative; width: 1170px;">
								<div class="event_img">
									<img src="../event/images/cpn_btm.jpg" alt="신규회원 할인"
										onclick="view.view(191);return false;">
								</div>
								<div class="event_info" style="">

									<div class="date">
										<em>2021.06.01 ~ 2021.06.30</em>
									</div>

									<strong class="title">신규회원 할인!</strong>
									<p class="summary">
										6월 한달간<br>신규회원을 위한 이벤트 !
									</p>
									<a class="btn_more"
										href="http://localhost:9000/Subway/event/event_content_cpn.jsp"
										onclick="view.view(191);return false;">자세히보기</a>
								</div>
							</li>
							<li aria-hidden="true"
								style="float: left; list-style: none; position: relative; width: 1170px;">
								<div class="event_img">
									<img src="../event/images/event_770x400_20201113042155905.jpg"
										alt="써브웨이 아침메뉴!" onclick="view.view(186);return false;">
								</div>
								<div class="event_info" style="">
									<div class="date">
										<em>2020.11.16 ~ </em>
									</div>
									<strong class="title">써브웨이 아침메뉴!</strong>
									<p class="summary">
										속은 같아도 빵은 다르게!<br>취향대로 즐기는 아침!
									</p>
									<a class="btn_more"
										href="http://localhost:9000/Subway/event/event_content_2.jsp"
										onclick="view.view(186);return false;">자세히보기</a>
								</div>
							</li>
							<li aria-hidden="true"
								style="float: left; list-style: none; position: relative; width: 1170px;">
								<div class="event_img">
									<img src="../event/images/event_770x400_20201006035853218.jpg"
										alt="말이 안 나올 땐 손으로 주문하자!"
										onclick="view.view(180);return false;">
								</div>
								<div class="event_info" style="">
									<div class="date">
										<em>2020.10.16 ~ </em>
									</div>
									<strong class="title">말이 안 나올 땐 손으로 주문하자!</strong>
									<p class="summary">
										말이 안 나올 땐?<br>손으로 주문하자!
									</p>
									<a class="btn_more"
										href="http://localhost:9000/Subway/event/event_content_3.jsp"
										onclick="view.view(180);return false;">자세히보기</a>
								</div>
							</li>
						</ul>
					</div>
					<div class="bx-controls bx-has-controls-direction bx-has-pager">
						<div class="bx-controls-direction">
							<a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a>
						</div>
						<div class="bx-pager bx-default-pager">
							<div class="bx-pager-item">
								<a href="" data-slide-index="0" class="bx-pager-link active">1</a>
							</div>
							<div class="bx-pager-item">
								<a href="" data-slide-index="1" class="bx-pager-link">2</a>
							</div>
							<div class="bx-pager-item">
								<a href="" data-slide-index="2" class="bx-pager-link">3</a>
							</div>
							<div class="bx-pager-item">
								<a href="" data-slide-index="3" class="bx-pager-link">4</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--// 이벤트ㆍ프로모션 slider s -->


		<!-- 이벤트 list s -->
		<div class="event_list_wrapper">
			<div class="content">
				<!-- tab -->
				<div class="tab_wrapper">
					<ul id="tabList">
						<li onclick="view.tab(this, '');return false;" class="active"><a
							href="#none">전체</a></li>
						<li><a href="#none" onclick="view.tab(this, 'Y');return false;">진행중인 이벤트</a></li>
						<li><a href="#none" onclick="view.tab(this, 'N');return false;">종료된 이벤트</a></li>
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
						<li class="close"><a href="#" onclick="return false;">
								<div class="event_img">
									<img src="../event/images/event_370x192_20210302025848613.jpg"
										alt="써브웨이 로스트 치킨 컬렉션">
								</div>
								<div class="event_info">
									<strong class="title">써브웨이 로스트 치킨 컬렉션</strong>
									<p class="ev_close">이벤트가 종료되었습니다.</p>
									<p class="ev_close">&nbsp;</p>
								</div>
						</a></li>
						<li class="close"><a href="#" onclick="return false;">
								<div class="event_img">
									<img src="../event/images/event_370x192_20210226012255184.jpg"
										alt="이달의 썹!프라이즈!">
								</div>
								<div class="event_info">
									<strong class="title">이달의 썹!프라이즈!</strong>
									<p class="ev_close">이벤트가 종료되었습니다.</p>
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