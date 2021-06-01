<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY - 매장찾기</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/map.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="map">
		<iframe src="https://map.naver.com/v5/search/%EC%84%9C%EB%B8%8C%EC%9B%A8%EC%9D%B4?c=14134222.5546623,4518373.6724403,15,0,0,0,dh"></iframe>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>