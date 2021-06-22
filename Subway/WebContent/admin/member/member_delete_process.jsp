<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.subway.dao.*"%>
<%
	String email = request.getParameter("email");
	MemberDAO mdao = new MemberDAO();
	boolean result = mdao.member_delete(email);
	
	if(result){ 
		//스크립트 alert 구문 넣어야 함..
		 response.sendRedirect("http://localhost:9000/Subway/admin/member/member_list.jsp");
	}else { 
		response.sendRedirect("http://localhost:9000/Subway/main/subway_main.jsp");
	}
%>
