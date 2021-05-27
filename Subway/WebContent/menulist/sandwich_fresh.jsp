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
			<li><a href="sandwich_classic.jsp" id="classic">클래식</a><div class="line"></div></li>
			<li><a href="sandwich_fresh.jsp" id="fresh" style="color:blue">프레쉬&라이트</a><div class="line"></div></li>
			<li><a href="sandwich_premium.jsp" id="premium">프리미엄</a></li>
		</ul>
	</div>
	<div class="menulist">
		<ul>
			<li class="item"><a href="#"><img src="images/로스트치킨샌드위치_20210503113731657.png"></a><br>
			<strong class="tit">로스트 치킨</strong>
			<span class="eng">Roasted Chicken</span>
			<span class="kcal">320 kcal</span>
			<div>
				<p class="summary">
					오븐에 구워 담백한 저칼로리 닭가슴살의 건강한 풍미
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"> <a href="#"><img src="images/item_sandwich_rotisserie_20210312063000816.jpg"></a><br>
			<strong class="tit">로티세리 바비큐 치킨</strong>
			<span class="eng">Rotisserie Barbucue Chicken</span>
			<span class="kcal">350 kcal</span>
			<div>
				<p class="summary">
					촉촉한 바비큐 치킨의 풍미가득.<br>
					손으로 찢어 더욱 부드러운 치킨의 혁명
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"><a href="#"><img src="images/써브웨이 클럽(샌드위치)_20210503113422349.png"></a><br>
			<strong class="tit">서브웨이 클럽</strong>
			<span class="eng">Subway Club</span>
			<span class="kcal">293 kcal</span>
			<div>
				<p class="summary">
					명실공허 시그니처 써브! 터키,햄,베이컨의 완벽한<br>
					앙상블
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"><a href="#"><img src="images/item_sandwich_turkey_20210312063055119.jpg"></a><br>
			<strong class="tit">터키</strong>
			<span class="eng">TurKey</span>
			<span class="kcal">480 kcal</span>
			<div>
				<p class="summary">
					280kcal로 슬림하게 즐기는 오리지날 터키 샌드위치
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
			<li class="item"><a href="#"><img src="images/item_sandwich_veggie_20210312063107485.jpg"></a><br>
			<strong class="tit">베지</strong>
			<span class="eng">Veggle Delite</span>
			<span class="kcal">230 kcal</span>
			<div>
				<p class="summary">
					첫 구운 빵과 신선한 7가지 야채로 즐기는 깔끔한 한끼
				</p>
			</div>
			<a href="#" class="btn_view"></a>
			</li>
		</ul>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>