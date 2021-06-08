<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.web.mail.*,com.subway.dao.*"%>
<%@ page import="java.io.PrintWriter" %>


<%

	request.setCharacterEncoding("utf-8");
	String code = request.getParameter("code");
	MemberDAO dao = new MemberDAO();
	
	
	
	String hp =	request.getParameter("hp");
	String id = request.getParameter("id");
	
	if(id == null){
		System.out.println("아이디찾기");
		String userEmail = dao.getUserEmail(hp);
		
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
	}else {
		System.out.println("비밀번호 찾기");
		String userEmail = dao.getUserEmail_ID(id);
		String pass = dao.getUserPass(id);
		
		boolean rightCode = (new SHA256().getSHA256(userEmail).equals(code)) ? true : false;
		if(rightCode == true){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('인증에 성공했습니다.');");
			script.println("location.href = 'idShow.jsp?id=" + id + "'");
			script.println("</script>");
			script.close();		
			return;
		}else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 코드입니다.');");
			script.println("location.href = 'FindPass.jsp'");
			script.println("</script>");
			script.close();		
			
		}
	}

%>
