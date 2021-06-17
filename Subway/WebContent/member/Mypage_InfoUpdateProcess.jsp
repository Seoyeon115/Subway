<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.*, com.subway.vo.*, java.io.*"%>
<%

	MemberVO vo = new MemberVO();
	vo.setName(request.getParameter("name"));
	vo.setAddr(request.getParameter("addr"));
	vo.setHp(request.getParameter("hp"));
	vo.setEmail(request.getParameter("email"));
	vo.setPass(request.getParameter("pass"));
	session.setAttribute("membervo", vo);
	

	
	/* SessionVO svo = (SessionVO)session.getAttribute("email");	 */
	
	
	MemberDAO dao = new MemberDAO();
	boolean result = dao.getUpdateResult(vo);
	System.out.println(result);
	
	if(result){
		response.sendRedirect("Mypage_InfoUpdateFinal.jsp");
	}
	 
%>