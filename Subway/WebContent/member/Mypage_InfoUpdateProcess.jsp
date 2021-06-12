<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.*, com.subway.vo.*, java.io.*"%>
<%
	MemberVO vo = new MemberVO();
	vo.setPass(request.getParameter("pass"));
	vo.setEmail(request.getParameter("email"));
	vo.setName(request.getParameter("name"));
	vo.setAddr(request.getParameter("addr"));
	vo.setHp(request.getParameter("hp"));
	session.setAttribute("membervo", vo);
	
	MemberDAO dao = new MemberDAO();
	boolean result = dao.getUpdateResult(vo);
	if(result){
		response.sendRedirect("Mypage_InfoUpdateFinal.jsp");
	}
	
%>