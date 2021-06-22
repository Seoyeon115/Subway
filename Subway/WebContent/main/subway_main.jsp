<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*, com.subway.comms.*" %>
<%
	String rpage = request.getParameter("page");  //최초 호출 시에는 rpage=null
	BoardDAO dao = new BoardDAO();	
	Commons commons = new Commons();
	HashMap map = commons.getPage(rpage, dao, "board");
	
	int start = (int)map.get("start");
	int end = (int)map.get("end");
	ArrayList<BoardVO> list = dao.getList(start, 3);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="../order/js/jquery-3.6.0.min.js"></script>
	<script src="main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- content -->
	<!-- <div class="carousel">
	<section>
		<img src="http://localhost:9000/Subway/images/main1.png">
	</section>
	</div>   -->
	<div id="demo" class="carousel slide" data-ride="carousel">

	 <!-- Indicators -->
	 <ul class="carousel-indicators">
	   <li data-target="#demo" data-slide-to="0" class="active"></li>
	   <li data-target="#demo" data-slide-to="1"></li>
	   <li data-target="#demo" data-slide-to="2"></li>
	   <li data-target="#demo" data-slide-to="3"></li>
	 </ul>
	 
	  
	  <!-- The slideshow -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="http://localhost:9000/Subway/images/main1.png" >
	    </div>
	    <div class="carousel-item">
	      <img src="http://localhost:9000/Subway/images/main2.png" >
	    </div>
	    <div class="carousel-item">
	      <img src="http://localhost:9000/Subway/images/main3.jpg" >
	    </div>
	    <div class="carousel-item">
	      <img src="http://localhost:9000/Subway/images/main4.jpg" >
	    </div>
	  </div>
	  
	 
	</div>

	

	<div class="carousel_btn">
		<article class="c_btn">
			<div class="find">
				<div class="find1"><a href="#"><img src="http://localhost:9000/Subway/images/icon_map.png"></a></div>
				<div class="find2"><a href="http://localhost:9000/Subway/map/map_search.jsp">매장찾기</a></div>		
			</div>
			<div class="order">
				<div class="order1"><a href="#"><img src="http://localhost:9000/Subway/images/icon_franchise.png"></a></div>
				<div class="order2"><a href="http://localhost:9000/Subway/order/order_map.jsp">주문하기</a></div>		
			</div>
		</article>
	</div>
	<div class="content">
		<section class="main_menu">
			<div>
				<img src="http://localhost:9000/Subway/images/subway's menu.png">
				<div>
					<h1>Subway's Menu</h1>
					<ul class="list_ul">
						<li><label for="slide01" class="lab" id="classicBtn" style="color:#009223;">클래식 </label><div></div></li>
						<li><label for="slide02" class="lab" id="freshBtn">프레쉬&라이트 </label><div></div></li>
						<li><label for="slide03" class="lab" id="premiumBtn">프리미엄</label></li>
					</ul>
				</div>
			</div>
			<div class="section">
				<input type="radio" name="slide" id="slide01" checked>				
				<input type="radio" name="slide" id="slide02">
				<input type="radio" name="slide" id="slide03">
			<article class="classic">
				<ul class="slidelist">
					<li>
						<div id="01">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=17"><img src="http://localhost:9000/Subway/images/sandwich_cl06.jpg"></a>
							<div>
								<h3>에그마요</h3>
								<p>
									부드러운 달걀과 고소한 마요네즈가 만나<br>
									더 부드러운 스테디 셀러
								</p>
							</div>
						</div>
						<div id="02">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=12"><img src="http://localhost:9000/Subway/images/sandwich_cl01.jpg"></a>
							<div>
								<h3>이탈리안 비엠티</h3>
								<p>
									페퍼로니, 살라미 그리고 햄이 만들어내는 최상의<br>
									조화! 전세계가 사랑하는 써브웨이의 베스트셀러!<br>
									Biggest Meatiest Tastiest, its' B.M.T!
								</p>
							</div>
						</div>
						<div id="03">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=11"><img src="http://localhost:9000/Subway/images/sandwich_cl02.jpg"></a>
							<div>
								<h3>비엘티</h3>
								<p>
									오리지널 아메리칸 스타일 베이컨의<br>
									풍미와 바삭함 그대로
								</p>
							</div>
						</div>
						<div id="04">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=13"><img src="http://localhost:9000/Subway/images/sandwich_cl03.jpg"></a>
							<div>
								<h3>미트볼</h3>
								<p>
									이탈리안 스타일 비프 미트볼에<br>
									써브웨이만의 풍부한 토마토 향이 듬뿍 살아있는<br>
									마리나라소스를 듬뿍
								</p>
							</div>
						</div>
					</li>
					<li>
						<div id="05">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=6"><img src="../menulist/images/item_sandwich_rotisserie_20210312063000816.jpg"></a>
							<div>
								<h3>로티세리 바비큐 치킨</h3>
								<p>
									촉촉한 바비큐 치킨의 풍미가득<br>
									손으로 찢어 더욱 부드러운 치킨의 혁명
								</p>
							</div>
						</div>
						<div id="06">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=5"><img src="../menulist/images/로스트치킨샌드위치_20210503113731657.png"></a>
							<div>
								<h3>로스트 치킨</h3>
								<p>
									오븐에 구워 담백한 저칼로리<br>
									닭가슴살의 건강한 풍미
								</p>
							</div>
						</div>
						<div id="07">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=8"><img src="../menulist/images/써브웨이 클럽(샌드위치)_20210503113422349.png"></a>
							<div>
								<h3>서브웨이 클럽</h3>
								<p>
									명실공허 시그니처 써브!<br>
									터키,햄,베이컨의 완벽한 앙상블
								</p>
							</div>
						</div>
						<div id="08">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=14"><img src="../menulist/images/item_sandwich_turkey_20210312063055119.jpg"></a>
							<div>
								<h3>터키</h3>
								<p>
									280kcal로 슬림하게 즐기는<br>
									오리지날 터키 샌드위치
								</p>
							</div>
						</div>
					</li>
					<li>
						<div id="09">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=1"><img src="../menulist/images/스파이스쉬림프(샌드위치)_20210429050445371.png"></a>
							<div>
								<h3>스파이시 쉬림프</h3>
								<p>
									빨간맛에 빠진 쉬림프!<br>
									이국적인 매콤함이 더해진<br>
									시즌 한정 스파이시 쉬림프!
								</p>
							</div>
						</div>
						<div id="10">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=9"><img src="../menulist/images/스파이시 이탈리안_20200914110115080.jpg"></a>
							<div>
								<h3>스파이시 이탈리안</h3>
								<p>
									살라미,페퍼로니가 입안 한가득!<br>
									쏘 핫한 이탈리아의 맛
								</p>
							</div>
						</div>
						<div id="11">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=2"><img src="../menulist/images/shrimp_20210315103931131.jpg"></a>
							<div>
								<h3>쉬림프</h3>
								<p>
									탱글한 식감이 그대로 살아있는 통새우가<br>
									5마리 들어가 한 입 베어 먹을 때 마다<br>
									진짜 새우의 흥미가 가득
								</p>
							</div>
						</div>
						<div id="12">
							<a href="http://localhost:9000/Subway/menulist/sandwich_detail.jsp?idx=7"><img src="../menulist/images/풀드포크_20200914110036750.jpg"></a>
							<div>
								<h3>폴드 포크 바비큐</h3>
								<p>
									훈연한 미국 정통 스타일의 리얼 바비큐<br>
									폴드포크가 들어간 샌드위치
								</p>
							</div>
						</div>
					</li>
				</ul>
			</article>
			</div>
		</section>
		<section class="main_inform">
			<article class="inform1">
				<div>
					<img src="http://localhost:9000/Subway/images/bg_utilization.png">
					<div>
						<span>써브웨이를</span><br>
						<span>제대로 즐기는 방법!</span><br>
						<div><a href="http://localhost:9000/Subway/method/orderstore_test.jsp">이용방법</a></div>
					</div>
				</div>
				<div>
					<iframe width="765" height="300" src="https://www.youtube.com/embed/fGzhNUaavVY" 
					title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
					encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
			</article>
			<article class="inform2">
				<div>
					<div>
						<img src="http://localhost:9000/Subway/images/subway's menu.png">
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
							<% for(BoardVO vo : list) {%>
							<li><a id="noticeList" href="http://localhost:9000/Subway/admin/notice/notice_content.jsp?bid=<%=vo.getBid()%>&rno=<%=vo.getRno()%>"><%=vo.getBtitle() %></a></li>
							<% } %>
							<li><a href="http://localhost:9000/Subway/board/notice_list.jsp" style="color:gray;">more</a></li>
						</ul>
						<!-- <ul>
							<li><a href="#">써브웨이 2021년 5월 가격 인상 안내</a></li>
							<li><a href="#">써브웨이 고객센터 2021년 설 연휴 휴무 안내</a></li>
							<li><a href="#">2021년 설날 당일 매장 영업 안내</a></li>
							<li><a href="http://localhost:9000/Subway/board/notice_list.jsp">more</a></li>
						</ul> -->
					</div>
				</div>
				<div>
					<img src="http://localhost:9000/Subway/images/logo_20210308043409639.png">
				</div>
			</article>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>