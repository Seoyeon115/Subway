<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<% 
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	
	MemberDAO dao = new MemberDAO();
	boolean result = dao.getDeleteResult(email,pass);
	if(result){
		response.sendRedirect("http://localhost:9000/Subway/main/subway_main.jsp");
	}
%>
