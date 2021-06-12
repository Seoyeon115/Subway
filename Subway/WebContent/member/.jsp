<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.MemberDAO, com.subway.vo.MemberVO" %>
<%
	session = request.getSession(false);
	MemberVO vo = (MemberVO) session.getAttribute("membervo");
	//모달창 비밀번호 데이터 받기
	String ncpass = request.getParameter("ncpass");
	String email = vo.getEmail();
	
	System.out.println(ncpass);
	System.out.println(email);
	
	
	MemberDAO dao = new MemberDAO();
	boolean result = dao.ChangePass(ncpass, email);
	
	System.out.println(result);
	if(result == false){
		response.sendRedirect("Mypage_InfoModifySuccess.jsp");
	}
	
%>