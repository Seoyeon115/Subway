<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<% 
	String email = request.getParameter("email");
	
	OrderDAO odao = new OrderDAO();
	boolean order_delete_result = odao.getDeleteResult(email);
	System.out.println(order_delete_result);
	if(order_delete_result){
		MemberDAO mdao = new MemberDAO();
		boolean result = mdao.delete_btn_able(email);
		if(result){
			SessionVO svo = (SessionVO)session.getAttribute("svo");
			if(svo != null){
				session.invalidate();
				response.sendRedirect("http://localhost:9000/Subway/main/subway_main.jsp");
			}
			//스크립트 에러 발생 구문 추가
			//response.sendRedirect("http://localhost:9000/Subway/main/subway_main.jsp");
		}else{ %>
			<script>
				alert("오류가 발생하였습니다. 잠시후에 다시 시도해주세요");
			</script>
			<%
			response.sendRedirect("http://localhost:9000/Subway/main/subway_main.jsp");
		}
	}
	
	/* MemberDAO dao = new MemberDAO();
	boolean result = dao.getDeleteResult(email,pass); */
%>
