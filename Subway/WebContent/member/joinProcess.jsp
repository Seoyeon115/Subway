<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.MemberDAO, com.subway.vo.MemberVO" %>
<jsp:useBean id="vo" class="com.subway.vo.MemberVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*"></jsp:setProperty>
<% 
	//회원가입 데이터 받기
	/*
	MemberVO vo = new MemberVO();
	vo.setEmail1(request.getParameter("email1"));
	vo.setEmail2(request.getParameter("email2"));
	vo.setPass(request.getParameter("pass"));
	vo.setName(request.getParameter("name"));
	vo.setHp1(request.getParameter("hp1"));
	vo.setHp2(request.getParameter("hp2"));
	vo.setHp3(request.getParameter("hp3"));
	vo.setPost(request.getParameter("post"));
	vo.setAddr(request.getParameter("addr"));
	vo.setDaddr(request.getParameter("daddr"));*/
	
	MemberDAO dao = new MemberDAO();
	boolean join_result = dao.getInsertResult(vo);
	
	if(join_result == true){
		response.sendRedirect("joinSuccess.jsp");
	}else{
		response.sendRedirect("joinFail.jsp");
	}
	
	
%>

