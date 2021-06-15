<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.*, java.io.*" %>
<% 
	String bid = request.getParameter("bid");
	
	BoardDAO dao = new BoardDAO();
	String bsfile = dao.getBsfile(bid);
  	boolean result = dao.getDeleteResult(bid);

  	if(result) {
		if(bsfile!=null) {
			String savePath = request.getServletContext().getRealPath("/upload");
			
			File file = new File(savePath + "/" + bsfile);
			if(file.exists()) {
				file.delete();
			}
		}
  	}

	if(result) {
		response.sendRedirect("notice_list.jsp");
	}
%>