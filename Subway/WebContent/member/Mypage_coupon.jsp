<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_coupon.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
			<h1>쿠폰</h1>
			<div class="coupon_tab">
				<section>
					<article>
						<div class="coupon1">
							<ul>
								<li><a href="#">사용 가능한 쿠폰</a></li>
							</ul>
						</div>
						<div class="coupon2">
							<ul>
								<li><a href="#">만료된 쿠폰</a></li>
							</ul>
						</div>
					</article>
				</section>
			</div>
		<div class="coupon_content">
		
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>