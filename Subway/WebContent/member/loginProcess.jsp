<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.MemberDAO, com.subway.vo.MemberVO, com.subway.vo.SessionVO" %>
<jsp:useBean id="vo" class="com.subway.vo.MemberVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*"></jsp:setProperty>
<%
	/*
	//로그인 폼에서 넘어오는 데이터 받기
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	*/
	
	//로그인 처리
	MemberDAO dao = new MemberDAO();
	SessionVO svo = dao.getLoginResult(vo);
	
	/*
	MemberDAO dao = new MemberDAO();
	boolean result = dao.getLoginResult(email,pass);*/
	
	if(svo.getResult() == 1){
		svo.setEmail(vo.getEmail());
		session.setAttribute("svo", svo);
		response.sendRedirect("http://localhost:9000/Subway/main/subway_main.jsp");
	}else{
		response.sendRedirect("loginFail.jsp");
	}
	
%>