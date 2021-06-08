<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.web.mail.*,com.subway.dao.*"%>
<%@ page import="java.io.PrintWriter" %>




<%
	request.setCharacterEncoding("utf-8");
	String code = request.getParameter("code");
	MemberDAO dao = new MemberDAO();
	String hp =	request.getParameter("hp");
	
	String userEmail = dao.getUserEmail(hp);
	System.out.println("Code =--->" + code);
	System.out.println("Code =--->" + new SHA256().getSHA256(userEmail));
	
	boolean rightCode = (new SHA256().getSHA256(userEmail).equals(code)) ? true : false;
	if(rightCode == true){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('인증에 성공했습니다.');");
		script.println("location.href = 'idShow.jsp?hp=" + hp + "'");
		script.println("</script>");
		script.close();		
		return;
	}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 코드입니다.');");
		script.println("location.href = 'Findid.jsp'");
		script.println("</script>");
		script.close();		
		
	}

%>
