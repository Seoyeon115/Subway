<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/2st_project/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/2st_project/css/subway.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- content -->
	<div class="carousel">
		<section>
			<a href="#"><img src="http://localhost:9000/2st_project/images/main1.png"></a>
			<div>
				<ul>
					<li><a href="#"><img src="http://localhost:9000/2st_project/images/icon_map.png"> 매장찾기</a></li>
					<li><a href="#"><img src="http://localhost:9000/2st_project/images/icon_franchise.png"> 주문하기</a></li>
				</ul>
			</div>
		</section>
	</div>
	<div class="content">
		<section>
			<div>
				<img src="http://localhost:9000/2st_project/images/subway's menu.png">
				<div>
					<h1>Subway's Menu</h1>
					<ul>
						<li><a href="#">클래식 </a><div></div></li>
						<li><a href="#">프레쉬&라이트 </a><div></div></li>
						<li><a href="#">프리미엄 </a></li>
					</ul>
				</div>
			</div>
			<article>
				<div>
					<img src="http://localhost:9000/2st_project/images/sandwich_cl06.jpg">
					<div>
						<h3>에그마요</h3>
						<span>부드러운 달걀과 고소한 마요네즈가 만나</span><br>
						<span>더 부드러운 스테디 셀러</span>
					</div>
				</div>
				<div>
					<img src="http://localhost:9000/2st_project/images/sandwich_cl01.jpg">
					<div>
						<h3>이탈리안 비엠티</h3>
						<span>페퍼로니, 살라미 그리고 햄이 만들어내는 최강</span><br>
						<span>의 조화! 전세계가 사랑하는 써브웨이의 베스</span><br>
						<span>트셀러! Biggest Meatiest Tastiest, its' M.B.T!</span>
					</div>
				</div>
				<div>
					<img src="http://localhost:9000/2st_project/images/sandwich_cl02.jpg">
					<div>
						<h3>비엘티</h3>
						<span>오리지널 아메리칸 스타일 베이컨의</span><br>
						<span>풍미와 바삭함 그대로</span>
					</div>
				</div>
				<div>
					<img src="http://localhost:9000/2st_project/images/sandwich_cl03.jpg">
					<div>
						<h3>미트볼</h3>
						<span>이탈리안 스타일 비프 미트볼에</span><br>
						<span>써브웨이만의 풍부한 토마토 향이 듬뿍 살아있는</span><br>
						<span>마리나라소스를 듬뿍</span>
					</div>
				</div>
			</article>
		</section>
		<section>
			<article>
				<div>
					<img src="http://localhost:9000/2st_project/images/bg_utilization.png">
					<div>
						<span>써브웨이를</span><br>
						<span>제대로 즐기는 방법!</span><br>
						<div><a href="#">이용방법</a></div>
					</div>
				</div>
				<div>
					<iframe width="765" height="300" src="https://www.youtube.com/embed/fGzhNUaavVY" 
					title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
					encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
			</article>
			<article>
				<div>
					<div>
						<img src="http://localhost:9000/2st_project/images/subway's menu.png">
						<div>
							<h1>What's New</h1>
							<span>써브웨이의 다양한 소식을</span>
							<span>빠르게 전달해드립니다.</span>
						</div>
					</div>
				</div>
				<div>	
					<div>
						<ul>
							<li><a href="#">써브웨이 2021년 5월 가격 인상 안내</a></li>
							<li><a href="#">써브웨이 고객센터 2021년 설 연휴 휴무 안내</a></li>
							<li><a href="#">2021년 설날 당일 매장 영업 안내</a></li>
							<li><a href="#">more</a></li>
						</ul>
					</div>
				</div>
				<div>
					<img src="http://localhost:9000/2st_project/images/logo_20210308043409639.png">
				</div>
			</article>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>