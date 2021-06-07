<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.MemberDAO, com.subway.vo.MemberVO" %>
<%
	//로그인 폼에서 넘어오는 데이터 받기
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	
	//회원정보 체크
	MemberDAO dao = new MemberDAO();
	boolean result = dao.getCheckResult(email,pass);
	
	
	if(result){
		response.sendRedirect("Mypage_InfoModify.jsp");
	}else{
		response.sendRedirect("loginFail.jsp");
	}

 %>