<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String email = svo.getEmail();
	System.out.println(email);  

	String idx = request.getParameter("idx");
	System.out.println(idx);
	
	String count_result = request.getParameter("count_result");
	System.out.println(count_result);
	String count_price = request.getParameter("count_price");
	System.out.println(count_price);
	
	String take = request.getParameter("take");
	System.out.println(take);
	String hp = request.getParameter("hp");
	System.out.println(hp);
	String ask = request.getParameter("ask");
	System.out.println(ask);
	
	
	
	
%>