<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 관리자 - 글쓰기 </title>

<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/board_write.css">
</head>
<body>
	<!-- header start -->
	<jsp:include page="../../main/header.jsp"></jsp:include>
	<!-- header end -->
	<!-- content -->
	<div class="content">
      <section class="board_write">
         <h1 class="title">관리자 - 공지사항</h1>
         <form name="notice_write" action="#" method="get">
	         <table border=1 class="content_layout">
	         	<tr>
	         		<th>제목</th>
	         		<td><input type="text" name="ntitle" id="ntitle"></td>
	         	</tr>
	         	<tr>
	         		<th>내용</th>
	         		<td><textarea name="ncontent"></textarea></td>
	         	</tr>
	         	<tr>
	         		<th>파일</th>
	         		<td><input type="file" name="nfile"></td>
	         	</tr>
	         	<tr>
	         		<td colspan="2">
	         			<button type="button" class="btn_style2" onclick="noticeFormCheck()">저장</button>
	         			<button type="reset" class="btn_style2">취소</button>
	         			<a href="notice_list.jsp"><button type="button" class="btn_style2">리스트</button></a>
	         			<a href="http://localhost:9000/Subway/main/subway_main.jsp"><button type="button" class="btn_style2">홈으로</button></a>
	         		</td>
	         	</tr>
	         </table>
         </form>
      </section>
   </div>
	
	<!-- content end -->
	<!-- footer start -->
	<jsp:include page="../../main/footer.jsp"></jsp:include>
	<!-- footer end -->
</body>
</html>