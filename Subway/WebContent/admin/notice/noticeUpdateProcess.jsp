<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.io.*" %>
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
	System.out.println("원래파일=" + multi.getParameter("ofile")  );
	
	//기존 파일 그대로 유지 ---> bfile: null
	//새로운 파일 선택 & 파일 수정 ---> bfile: 선택된 파일명
	
 	BoardVO vo = new BoardVO();
	boolean result = false;

	if(multi.getOriginalFileName("bfile")!=null) {
		//새로운 파일 선택
		vo.setBid(multi.getParameter("bid"));
		vo.setBtitle(multi.getParameter("btitle"));
		vo.setBcontent(multi.getParameter("bcontent"));
		vo.setBfile(multi.getOriginalFileName("bfile"));
		vo.setBsfile(multi.getFilesystemName("bfile"));
		
		BoardDAO dao = new BoardDAO();
		result = dao.getUpdateResult(vo); //파일포함 업데이트
		
		//기존 파일을 upload 폴더에서 삭제
		System.out.println(multi.getParameter("bsfile_old"));
		if(result) {
			File old_file = new File(savePath+"/"+multi.getParameter("bsfile_old"));
			if(old_file.exists()) {
				if(old_file.delete()) System.out.println("삭제 완료!");
				
			}
		}
		
	} else {
		//기존 파일 유지
		vo.setBid(multi.getParameter("bid"));
		vo.setBtitle(multi.getParameter("btitle"));
		vo.setBcontent(multi.getParameter("bcontent"));
		
		BoardDAO dao = new BoardDAO();
		result = dao.getUpdateResultNofile(vo); //파일 포함하지 않은 업데이트(기존파일 유지)
	}	
	
	if(result) {
		response.sendRedirect("http://localhost:9000/Subway/board/notice_list.jsp");
	}
%>