<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*"%>
<%
String bid = request.getParameter("bid");
String rno = request.getParameter("rno");

BoardDAO dao = new BoardDAO();
BoardVO vo = dao.getContent(bid);
String content = vo.getBcontent().replace("<br>", "\r\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
<title>공지사항</title>
<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/board_write.css">
<script src="http://localhost:9000/Subway/admin/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/Subway/admin/js/board.js"></script>
<style>
span#fname {
	width: 300px;
	display: inline-block;
	font-size: 13px;
	margin-left:-585px;
	background-color: white;
	padding: 2px 0 2px 5px;
}

div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
	padding-bottom:80px;
}

.btn_right {
	float: right;
	margin-bottom: 10px;
}

</style>

<script>
	$(document).ready(function() {
		$("input[type=file]").on('change', function() {
			if(window.FileReader) {
				var filename = $(this)[0].files[0].name; //첫번째 fileReader에서 선택된 첫번째 파일의 이름
				$("#fname").text("").text(filename)
				/* $("#fname").css("display", "none"); */
			}
		});
	});
</script>
</head>
<body>
	<!-- header start -->
	<jsp:include page="../../main/header.jsp"></jsp:include>
	<!-- header end -->

	<!-- content -->
	<div class="bor">
		<div class="content">
			<section class="board_write">
				<h1 class="title">공지사항 수정</h1>
				<form name="notice_update_form" action="noticeUpdateProcess.jsp" method="post" enctype="multipart/form-data">
				<input type="hidden" name="bid" value="<%= bid %>"> <!-- 화면엔 표시 되지는 않지만, 업데이트 프로세스를 위해서 꼭 필요한 bid를 넘기는 방법 -->
				<input type="hidden" name="bsfile_old" value="<%= vo.getBsfile() %>"> <!-- 새 파일을 업로드할 경우, 기존 파일을 db에서 삭제하기 위해 기존 파일 이름을 넘겨줌 -->
					<table border=1 class="content_layout">
						<tr>
							<th>제목</th>
							<td><input type="text" name="btitle" value="<%= vo.getBtitle() %>" id="btitle"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea name="bcontent"><%= content %></textarea></td>
						</tr>
						<tr>
							<th>파일첨부</th>
							<td>
								<% if(vo.getBfile()!=null) { %>
								<input type="file" name="bfile"><span id="fname"><%= vo.getBfile() %></span>
								<% } else { %>							
									<input type="file" name="bfile"><span id="fname">선택된 파일 없음</span>
								<% } %>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="button" class="btn_style2" id="btnUpdate">수정</button>
								<a href="notice_content.jsp?bid=<%=bid%>&rno=<%=rno%>"><button type="button" class="btn_style2">취소</button></a>
								<a href="http://localhost:9000/Subway/admin/notice/notice_list.jsp"><button type="button" class="btn_style">리스트</button></a> 
							</td>
						</tr>
					</table>
				</form>
			</section>
		</div>
	</div>
	<!-- content end -->


	<!-- footer start -->
	<jsp:include page="../../main/footer.jsp"></jsp:include>
	<!-- footer end -->

</body>
</html>