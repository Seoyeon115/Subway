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
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="carousel">
		<section>
			<img src="http://localhost:9000/Subway/images/main1.png">
		</section>
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
						<li><label for="slide01" class="lab">클래식 </label><div></div></li>
						<li><label for="slide02" class="lab">프레쉬&라이트 </label><div></div></li>
						<li><label for="slide03" class="lab">프리미엄</label></li>
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
						<div>
								<img src="http://localhost:9000/Subway/images/sandwich_cl06.jpg">
								<div>
									<h3>에그마요</h3>
									<span>부드러운 달걀과 고소한 마요네즈가 만나</span><br>
									<span>더 부드러운 스테디 셀러</span>
								</div>
						</div>
						<div>
							<img src="http://localhost:9000/Subway/images/sandwich_cl01.jpg">
							<div>
								<h3>이탈리안 비엠티</h3>
								<span>페퍼로니, 살라미 그리고 햄이 만들어내는 최상의</span><br>
								<span>조화! 전세계가 사랑하는 써브웨이의 베스트셀러!</span><br>
								<span>Biggest Meatiest Tastiest, its' B.M.T!</span>
							</div>
						</div>
						<div>
							<img src="http://localhost:9000/Subway/images/sandwich_cl02.jpg">
							<div>
								<h3>비엘티</h3>
								<span>오리지널 아메리칸 스타일 베이컨의</span><br>
								<span>풍미와 바삭함 그대로</span>
							</div>
						</div>
						<div>
							<img src="http://localhost:9000/Subway/images/sandwich_cl03.jpg">
							<div>
								<h3>미트볼</h3>
								<span>이탈리안 스타일 비프 미트볼에</span><br>
								<span>써브웨이만의 풍부한 토마토 향이 듬뿍 살아있는</span><br>
								<span>마리나라소스를 듬뿍</span>
							</div>
						</div>
					</li>
					<li>
						<div>
							<img src="../menulist/images/item_sandwich_rotisserie_20210312063000816.jpg">
							<div>
								<h3>로티세리 바비큐 치킨</h3>
								<span>촉촉한 바비큐 치킨의 풍미가득.</span><br>
								<span>손으로 찢어 더욱 부드러운 치킨의 혁명</span>
							</div>
						</div>
						<div>
							<img src="../menulist/images/로스트치킨샌드위치_20210503113731657.png">
							<div>
								<h3>로스트 치킨</h3>
								<span>오븐에 구워 담백한 저칼로리</span><br>
								<span>닭가슴살의 건강한 풍미</span>
							</div>
						</div>
						<div>
							<img src="../menulist/images/비엘티_20200707033847305_20210204025320342.jpg">
							<div>
								<h3>비엘티</h3>
								<span>명실공허 시그니처 써브!</span><br>
								<span>터키,햄,베이컨의 완벽한 앙상블</span>
							</div>
						</div>
						<div>
							<img src="../menulist/images/item_sandwich_turkey_20210312063055119.jpg">
							<div>
								<h3>터키</h3>
								<span>280kcal로 슬림하게 즐기는</span><br>
								<span>오리지날 터키 샌드위치</span>
							</div>
						</div>
					</li>
					<li>
						<div>
							<img src="../menulist/images/스파이스쉬림프(샌드위치)_20210429050445371.png">
							<div>
								<h3>스파이시 쉬림프</h3>
								<span>빨간맛에 빠진 쉬림프!</span><br>
								<span>이국적인 매콤함이 더해진</span><br>
								<span>시즌 한정 스파이시 쉬림프!</span>
							</div>
						</div>
						<div>
							<img src="../menulist/images/스파이스쉬림프아보카도(샌드위치)_20210429050610933.png">
							<div>
								<h3>스파이시 쉬림프 아보카도</h3>
								<span>매콤한 쉬림프와 부~드러운 아보카도가 만나,</span><br>
								<span>이국적인 풍미 업!</span>
							</div>
						</div>
						<div>
							<img src="../menulist/images/shrimp_20210315103931131.jpg">
							<div>
								<h3>쉬림프</h3>
								<span>탱글한 식감이 그대로 살아있는 통새우가</span><br>
								<span>5마리 들어가 한 입 베어 먹을 때 마다</span><br>
								<span>진짜 새우의 흥미가 가득</span>
							</div>
						</div>
						<div>
							<img src="../menulist/images/풀드포크_20200914110036750.jpg">
							<div>
								<h3>폴드 포크 바비큐</h3>
								<span>훈연한 미국 정통 스타일의 리얼 바비큐 폴드포크가</span><br>
								<span>들어간 샌드위치</span>
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
							<li><a href="http://localhost:9000/Subway/admin/notice/notice_content.jsp?bid=<%=vo.getBid()%>&rno=<%=vo.getRno()%>"><%=vo.getBtitle() %></a></li>
							<% } %>
							<li><a href="http://localhost:9000/Subway/board/notice_list.jsp">more</a></li>
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