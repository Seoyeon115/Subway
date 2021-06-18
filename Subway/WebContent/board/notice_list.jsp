<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*, com.subway.comms.*" %>
<%
	String rpage = request.getParameter("page");  //최초 호출 시에는 rpage=null
	BoardDAO dao = new BoardDAO();	
	Commons commons = new Commons();
	HashMap map = commons.getPage(rpage, dao, "board");
	
	int start = (int)map.get("start");
	int end = (int)map.get("end");
	ArrayList<BoardVO> list1 = dao.getList1();
	ArrayList<BoardVO> list = dao.getList(start, end);
	
	SessionVO svo = (SessionVO) session.getAttribute("svo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/board.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/am-pagination.css">
<script src="http://localhost:9000/Subway/admin/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/Subway/admin/js/am-pagination.js"></script>
<script>
$(document).ready(function(){
	
	var pager = jQuery('#ampaginationsm').pagination({
	
	    maxSize: 10,	    		// max page size
	    totals: <%=map.get("dbCount")%>,	// total pages	
	    page: <%=rpage%>,		// initial page		
	    pageSize: <%=map.get("pageSize")%>,			// max number items per page
	
	    // custom labels		
	    lastText: '&raquo;&raquo;', 		
	    firstText: '&laquo;&laquo;',		
	    prevText: '&laquo;',		
	    nextText: '&raquo;',
			     
	    btnSize:'sm'	// 'sm'  or 'lg'		
	});
	
	jQuery('#ampaginationsm').on('am.pagination.change',function(e){  //페이지가 변경되면 href의 주소 변경
		   jQuery('.showlabelsm').text('The selected page no: '+e.page);
           $(location).attr('href', "http://localhost:9000/Subway/admin/notice/notice_list.jsp?page="+e.page);         
    });
	
	});
</script> 
</head>
<style>
div.bor {
	border-top: 1px solid rgb(229, 229, 229);
	width: 100%;
	background-color: rgb(246, 246, 246);
	border: 1px sollid red;
}
.board_list_wrapper table td .num {
    color: #ffc300;
    font-family: font_sw;
    font-weight: bold;
}
</style>
<body>
	<!-- header start -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- header end -->
	<!-- content -->
	<div class="bor">
		<div id="ncontent">
			<h2 class="subTitle">공지사항</h2>

			<!-- 뉴스ㆍ공지사항 list s -->
			<div class="board_list_wrapper">
				<div class="ncontent">
					<p class="board_total">
						총<strong><%=map.get("dbCount")%></strong>건의 게시글이 있습니다.
					</p>
					<% if(svo.getEmail().equals("admin@naver.com")){ %>
						<a class="btn_right" href="../admin/notice/notice_write.jsp"><button type="button" class="btn_write" style="width:15%;">글쓰기</button></a>
					<% } %>

					<table>
						<caption>공지사항 테이블</caption>
						<colgroup>
							<col width="100px">
							<col width="*">
							<col width="50px">
							<col width="120px">
						</colgroup>
						<tbody>
							<% for(BoardVO vo : list1) {%>
							<tr class="notice">
								<!-- 공지사항일경우 notice 클래스 추가 -->
								<td><div class="icon_notice"></div></td>
								<td><div class="title">
										<a href="http://localhost:9000/Subway/admin/notice/notice_content.jsp?bid=
											<%=vo.getBid()%>&rno=<%=vo.getRno()%>"><%=vo.getBtitle() %></a>
									</div></td>
								<td><div></div></td>
								<td><div class="date"><%= vo.getBdate() %></div></td>
							</tr>
							<% } %>


							<% for(BoardVO vo : list) {%>
							<tr>
								<td><div class="num"><%= vo.getRno() %>
									</div></td>
								<td><div class="title">
										<a
											href="http://localhost:9000/Subway/admin/notice/notice_content.jsp?bid=<%=vo.getBid()%>&rno=<%=vo.getRno()%>"><%= vo.getBtitle() %></a>
									</div></td>
								<td><div></div></td>
								<td><div class="date"><%= vo.getBdate() %></div></td>
							</tr>
							<% } %>

						</tbody>
					</table>
				</div>

				<!-- board 페이지 -->
				<div>
					<div class="pagination" id="ampaginationsm"></div>
				</div>
				
				<!--// board 페이지 -->
			</div>
			<!--// 뉴스ㆍ공지사항 list e -->
		</div>
	</div>

	<!-- footer start -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<!-- footer end -->
	
</body>
</html>