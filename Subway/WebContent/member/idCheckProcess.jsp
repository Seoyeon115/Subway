<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.MemberDAO" %>
<% 
	String email = request.getParameter("email");	
	MemberDAO dao = new MemberDAO();
	int result = dao.getIdCheck(email);
	
	out.write(String.valueOf(result)); 
%>
