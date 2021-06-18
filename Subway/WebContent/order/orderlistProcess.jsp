<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	
	String count_result = request.getParameter("count_result");
	String count_price = request.getParameter("count_price");
	String take = request.getParameter("take");	
	String hp = request.getParameter("hp");
	String ask = request.getParameter("ask");
	String coupon_price = request.getParameter("couponTotal");
	
	String total_price = String.valueOf(Integer.parseInt(request.getParameter("count_price")) - Integer.parseInt(coupon_price)); 
	
	
	
	FinalOrderVO vo = new FinalOrderVO();
	vo.setO_EAT(request.getParameter("take"));
	vo.setHP(request.getParameter("hp"));
	vo.setO_MESSAGE(request.getParameter("ask"));
	vo.setO_COUPON(request.getParameter(null));
	vo.setO_AMT(request.getParameter("count_result"));
	vo.setO_PRICE(total_price);
	
	String idx = request.getParameter("idx");
	
	
	OrderDAO dao = new OrderDAO();
	MenuVO menuvo = dao.Order_Detail(idx);
	
	OrderVO ovo = (OrderVO) session.getAttribute("ordervo");
	dao.insertOrder(svo,ovo);
	
	boolean result = dao.getOrderResult(svo,vo);
	
	if(result){
		//쿠폰 사용한것은 null값으로 바꾸기
		if(coupon_price.equals("0")){
			
		}else {
			MemberDAO mdao = new MemberDAO();
			mdao.couponUse(svo.getEmail(),coupon_price);
		}
		response.sendRedirect("order_final_check.jsp");
	}else{
		response.sendRedirect("http://localhost:9000/Subway/member/joinFail.jsp");
	}
	 
	
	
	
	
	
%>