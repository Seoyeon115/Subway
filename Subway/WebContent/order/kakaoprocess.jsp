<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.*, com.subway.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");

	String paddress = request.getParameter("paddress");
	String pname = request.getParameter("pname");
	String lat = request.getParameter("latclick");  
	String lng = request.getParameter("lngclick");
	
	//콘솔 출력 테스트 차례대로 위도, 경도, 주소, 장소명
	/* System.out.println(paddress);
	System.out.println(pname);
	System.out.println(lat);
	System.out.println(lng);  */
	
	StoreVO vo = new StoreVO();
	vo.setSaddr(request.getParameter("paddress"));
	vo.setSname(request.getParameter("pname"));
	vo.setLatitude(request.getParameter("latclick"));
	vo.setLongitutde(request.getParameter("lngclick"));
	
	session.setAttribute("latclick",lat);
	session.setAttribute("lngclick",lng);
	
	MapDAO dao = new MapDAO();
	boolean store_result = dao.getInsertResult(vo);
	
	
	if(store_result == true){
		response.sendRedirect("order_sandwich.jsp");
	}
	
%>

</body>
</html>