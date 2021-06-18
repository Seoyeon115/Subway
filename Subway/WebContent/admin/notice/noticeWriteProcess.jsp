<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>

<% 
	String savePath = request.getServletContext().getRealPath("/upload");
	System.out.println(savePath);

	//파일 크기 15MB로 제한
	int sizeLimit = 1024*1024*15;
	                                                      
	MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
	
	//파일명 확인
	System.out.println("화면UI이름=" + multi.getOriginalFileName("bfile") );
	System.out.println("폴더저장이름=" + multi.getFilesystemName("bfile")  );


 	BoardVO vo = new BoardVO();
	vo.setBtitle(multi.getParameter("btitle"));
	vo.setBcontent(multi.getParameter("bcontent"));
	vo.setBfile(multi.getOriginalFileName("bfile"));
	vo.setBsfile(multi.getFilesystemName("bfile"));
	
	System.out.println(vo.getBtitle());
	System.out.println(vo.getBcontent());
	System.out.println(vo.getBfile());
	System.out.println(vo.getBsfile());
	
 	BoardDAO dao = new BoardDAO();
	boolean result = dao.getInsertResult(vo);
	
	if(result) {
		response.sendRedirect("http://localhost:9000/Subway/board/notice_list.jsp");
	}
%>
