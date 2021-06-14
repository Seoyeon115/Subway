<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.subway.vo.SessionVO" %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){
		session.invalidate();
		response.sendRedirect("http://localhost:9000/Subway/main/subway_main.jsp");
	}
%>