<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴소개-샌드위치</title>
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/main.css">
<script src="jquery-3.6.0.min.js"></script>
<script src="menu_change.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<div class="img01">
		<h2 class="img01_h2">Sandwich</h2>
		<p class="img01_p">
			전세계 넘버원 브랜드 Subway! <br>
			50년 전통의 세계 최고의 샌드위치를 맛보세요!
		</p>
	</div>
	<div class="detail_menu">
		<ul>
			<li><a href="sandwich.jsp" id="all">All</a><div class="line"></div></li>
			<li><a href="sandwich_classic.jsp" id="classic" style="color:blue">클래식</a><div class="line"></div></li>
			<li><a href="sandwich_fresh.jsp" id="fresh">프레쉬&라이트</a><div class="line"></div></li>
			<li><a href="sandwich_premium.jsp" id="premium">프리미엄</a></li>
		</ul>
	</div>
	<div class="menulist">
		<ul>
			<li class="item"><a href="#"><img src="images/이탈리안-비엠티_20200707034231821_20210204025202539.jpg"></a><br>
			<strong class="tit">이탈리안 비엠티</strong>
			<span class="eng">Italian B.M.T.</span>
			<span class="kcal">410 kcal</span>
			<div>
				<p class="summary">
					페퍼로니,살라미 그리고 햄이 만들어내는 최상의<br>
					조화!<br>
					전세계가 사랑하는 써브웨이의 베스트셀러!<br>
					Biggest Meatiest Tastiest,its' B.M.T!
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"><a href="#"><img src="images/비엘티_20200707033847305_20210204025320342.jpg"></a><br>
			<strong class="tit">비엘티</strong>
			<span class="eng">B.L.T.</span>
			<span class="kcal">380 kcal</span>
			<div>
				<p class="summary">
					오리지널 아메리칸 스타일 베이컨의 풍미와 바삭함<br>
					그대로~
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"><a href="#"><img src="images/미트볼샌드위치_20210503114049252.png"></a><br>
			<strong class="tit">미트볼</strong>
			<span class="eng">Meatball</span>
			<span class="kcal">480 kcal</span>
			<div>
				<p class="summary">
					이탈리안 스타일 비프 미트볼에 써브웨이만의 풍부한<br>
					토마토 향이<br>
					살아있는 마리나라소스를 듬뿍
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"><a href="#"><img src="images/햄_20200707034527390_20210204024721139.jpg"></a><br>
			<strong class="tit">햄</strong>
			<span class="eng">Ham</span>
			<span class="kcal">290 kcal</span>
			<div>
				<p class="summary">
					기본 중에 기본! 풍부한 햄이 만들어내는 입 안 가득<br>
					넘치는 맛의 
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"><a href="#"><img src="images/참치_20200707034257210_20210204024840656.jpg"></a><br>
			<strong class="tit">참치</strong>
			<span class="eng">Tuna</span>
			<span class="kcal">480 kcal</span>
			<div>
				<p class="summary">
					남녀노소 누구나 좋아하는 담백한 참치와 고소한<br>
					마요네즈의 완벽한 조화
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
		</ul>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>