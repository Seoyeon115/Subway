<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/orderstore_tip.css">
	
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>써브웨이 이용방법</h1>
		<div class="orderstore_tab">
			<div class="orderstore_text"><a href="http://localhost:9000/Subway/method/orderstore_test.jsp">매장에서 주문하기</a></div>
			<div class="orderstore_text2"><a href="http://localhost:9000/Subway/method/orderstore_tip.jsp">주문 TIP</a></div>
		</div>
		<div class="ordertip_content">
		<div class="ordertip_background">	
			<div class="tip_steak">
				<div class="orange"><div class="orange2">완벽한 한끼</div>를 원하신다면?</div>
				<div class="orange_text">
					<div class="orange_title">스테이크 & 치즈</div>
					<div class="orange_text2"><div class="orange_text3">고급스러운 스테이크와 고소하고 진한 치즈의 콜라보</div><br>
					<div class="orange_text4">신선한 야채와 함께 푸짐하고 완벽한 한끼가 완성됩니다!</div><br>
					<div class="orange_text5">다양한 토핑을 추가해 나만의 한끼 메뉴를 즐겨보세요.</div></div>
				</div>
				<div class="steak_img"><img src="http://localhost:9000/Subway/method/images/img_sandwich01.png"></div>
			</div>
		</div>
		<div class="add_tip">
			<div class="add_tip1">더 맛있게 즐기는 <div class="add_tip2">TIP</div></div>
			<div class="add_content">
				<section>
					<article>
						<div class="add_content1">
							<img src="http://localhost:9000/Subway/method/images/img_cheese.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul01.png">&nbsp;CHEESE</div>
							<div class="add_text2">더블치즈로 치즈와 쇠고기의<br>완벽한 조화!</div>
						</div>
						<div class="add_content2">
							<img src="http://localhost:9000/Subway/method/images/img_sauce01.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul01.png">&nbsp;SAUCE</div>
							<div class="add_text2">달콤하게 즐기고 싶다면 스윗어니언+마요네즈!<br>스테이크의 맛을 즐기고 싶다면 후추만 톡톡!</div>
						</div>
						<div class="add_content3">
							<img src="http://localhost:9000/Subway/method/images/img_vegetable.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul03.png">&nbsp;VEGETABLE</div>
							<div class="add_text2">토마토,오이를 빼면<br>고기의 풍미를 즐길 수 있습니다.</div>
						</div>
					</article>
				</section>
			</div>
		</div>
		<div class="ordertip_background2">	
			<div class="tip_steak">
				<div class="white"><div class="white2">다이어트</div>중이라면?</div>
				<div class="white_text">
					<div class="white_title2">로스트치킨</div> 
					<div class="white_text2"><div class="white_text3">퍽퍽한 닭가슴살은 이제 그만!</div><br>
					<div class="white_text4">로스트 치킨 샐러드는 가볍고 든든하게 즐길 수 있습니다.</div><br>
					<div class="white_text5">샌드위치와 샐러드로 맛있고 든든하게 즐기세요.</div></div>
				</div>
				<div class="steak_img"><img src="http://localhost:9000/Subway/method/images/img_sandwich02.png"></div>
			</div>
		</div>
		<div class="add_tip">
			<div class="add_tip1">더 맛있게 즐기는 <div class="add_tip2">TIP</div></div>
			<div class="add_content">
				<section>
					<article>
						<div class="add_content1">
							<img src="http://localhost:9000/Subway/method/images/img_salad.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul01.png">&nbsp;SALAD</div>
							<div class="add_text2">로스트치킨은 샐러드로 드셔도 좋습니다.<br>관리의 시작은 써브웨이로부터!</div>
						</div>
						<div class="add_content2">
							<img src="http://localhost:9000/Subway/method/images/img_sauce02.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul01.png">&nbsp;SAUCE</div>
							<div class="add_text2">랜치로 고소하게 즐겨보세요!</div>
						</div>
						<div class="add_content5">
							<img src="http://localhost:9000/Subway/method/images/img_topping.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul03.png">&nbsp;TOPPING</div>
							<div class="add_text2">올리브, 피클, 할라피뇨를 빼고 드시면,<br>담백하고 부드러운 로스트 치킨을<br>제대로 즐길 수 있습니다.</div>
						</div>
					</article>
				</section>
			</div>
		</div>
		<div class="ordertip_background3">	
			<div class="tip_steak">
				<div class="white"><div class="white2">건강</div>을 생각한다면?</div>
				<div class="purple_text">
					<div class="white_title">써브웨이 클럽</div>
					<div class="white_text2"><div class="white_text3">고기의 단백질과 야채의 비타민으로 영양UP!</div><br>
					<div class="white_text4">절임류 야채를 제외해서 더 담백하게,올리브오일을 넣어 부담은 DOWN!</div><br>
					<div class="white_text5">써브웨이 클럽으로 건강한 하루를 보내세요.</div></div>
				</div>
				<div class="steak_img"><img src="http://localhost:9000/Subway/method/images/img_sandwich03.png"></div>
			</div>
		</div>
		<div class="add_tip">
			<div class="add_tip1">더 맛있게 즐기는 <div class="add_tip2">TIP</div></div>
			<div class="add_content">
				<section>
					<article>
						<div class="add_content1">
							<img src="http://localhost:9000/Subway/method/images/img_sauce03.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul01.png">&nbsp;SAUCE</div>
							<div class="add_text2">올리브오일과 후추를 살짝 뿌리면,<br>짜지않고 담백한 행복한 맛을 느낄 수 있습니다.</div>
						</div>
						<div class="add_content2">
							<img src="http://localhost:9000/Subway/method/images/img_cheese.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul03.png">&nbsp;CHEESE</div>
							<div class="add_text2">치즈를 빼고 터키,로스트 비프,<br>햄의 완벽한 조화를 느껴보세요!</div>
						</div>
						<div class="add_content4">
							<img src="http://localhost:9000/Subway/method/images/img_topping.jpg">
							<div class="add_text"><img src="http://localhost:9000/Subway/method/images/bul03.png">&nbsp;TOPPING</div>
							<div class="add_text2">올리브,피클,할라피뇨를 빼고 드시면,<br>야채들의 싱싱한 맛을 하나하나 느끼실 수<br>있습니다.</div>
						</div>
					</article>
				</section>
			</div>
		</div>
		</div>
	</div>

	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	
	
</body>
</html>