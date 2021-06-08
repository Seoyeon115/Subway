<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.web.mail.*,java.io.PrintWriter,com.subway.dao.*,com.subway.vo.*" %>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.PrintWriter"%>
<%
	MemberDAO dao = new MemberDAO();
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	
	String result = dao.Certification(name,hp);
	
	if(result.equals("")) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이름과 전화번호가 일치하지 않습니다');");
		script.println("location.href = 'Findid.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
		
	String host = "http://localhost:9000/Subway/member/";
	String from = "ssangyongsubwayproject@gmail.com";
	String to = result;
	String subject = "Subway ID인증을 위한 이메일 입니다.";
	String content = "다음 링크에 접속하여 이메일 확인을 진행하세요" + 
		"<a href='" + host + "emailCheckAction.jsp?hp=" + hp + "&code=" + new SHA256().getSHA256(to) + "'>이메일 인증하기</a>";
	Properties p = new Properties();
	p.put("mail.smtp.user", from);
	p.put("mail.smtp.host", "smtp.googlemail.com");
	p.put("mail.smtp.port", "465");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	p.put("mail.smtp.socketFactory.port", "465");
	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	p.put("mail.smtp.socketFactory.fallback", "false");
	
	try{
		Authenticator auth = new Gmail();
		Session ses = Session.getInstance(p,auth);
		ses.setDebug(true);
		MimeMessage msg = new MimeMessage(ses);
		msg.setSubject(subject);
		Address fromAddr = new InternetAddress(from);
		msg.setFrom(fromAddr);
		Address toAddr = new InternetAddress(to);
		msg.addRecipient(Message.RecipientType.TO, toAddr);
		msg.setContent(content,"text/html;charset=utf-8");
		Transport.send(msg);
	}catch(Exception e){
		e.printStackTrace();
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('오류가 발생했습니다..');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("이메일 인증 메일이 발송되었습니다. 이메일을 확인해주세요");
	</script>
</body>
</html>