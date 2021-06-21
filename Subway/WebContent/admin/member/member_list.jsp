<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.dao.*, com.subway.vo.*, java.util.*, com.subway.comms.* " %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){
		
	String rpage = request.getParameter("page"); //최초 호출시에는 rpage=null
	MemberDAO dao = new MemberDAO();
	
	Commons commons = new Commons();
	HashMap map = commons.getPage(rpage, dao, "member");
	int start = (int)map.get("start");
	int end = (int)map.get("end");
	ArrayList<MemberVO> list = dao.getList(start, end);
	

	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자>회원관리</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/admin.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/am-pagination.css">
	<script src="http://localhost:9000/Subway/admin/js/jquery-3.6.0.min.js"></script>
	<script src="http://localhost:9000/Subway/admin/js/am-pagination.js"></script>
	<script>
		$(document).ready(function(){
			
			var pager = jQuery('#ampaginationsm').pagination({
			
			    maxSize: 7,	    		// max page size
			    totals: <%=map.get("dbCount")%>,	// total pages	
			    page: <%=map.get("rpage")%>,		// initial page		
			    pageSize: <%=map.get("pageSize")%>,			// max number items per page
			
			    // custom labels		
			    lastText: '&raquo;&raquo;', 		
			    firstText: '&laquo;&laquo;',		
			    prevText: '&laquo;',		
			    nextText: '&raquo;',
					     
			    btnSize:'sm'	// 'sm'  or 'lg'		
			});
			
			jQuery('#ampaginationsm').on('am.pagination.change',function(e){
				   jQuery('.showlabelsm').text('The selected page no: '+e.page);
		           $(location).attr('href', "http://localhost:9000/Subway/admin/member/member_list.jsp?page="+e.page);         
		    });
			
	 	});
	</script> 
</head>
<body>
	<!-- header -->
	<jsp:include page="http://localhost:9000/Subway/main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="member_list">
			<h1 class="title">회원 관리</h1>
			<table class="content_layout">
				<tr>
					<th>번호</th>
					<th>이메일</th>
					<th>이름</th>
					<th>핸드폰</th>
					<th>주소</th>
					<th>가입일자</th>
					<th>회원탈퇴</th>
				</tr>
				<% for(MemberVO vo : list){ %>
				<tr>
					<td><%= vo.getRno() %></td>
					<td><a href="http://localhost:9000/Subway/admin/member/member_content.jsp?email=<%= vo.getEmail() %>&rno=<%= vo.getRno()%>"><%= vo.getEmail() %></a></td>
					<td><%= vo.getName() %></td>
					<td><%= vo.getHp() %></td>
					<td><%= vo.getAddr() %></td>
					<td><%= vo.getMdate() %></td>
					<td>
						<% if(vo.getChoice() == 0){ %>
						<button type="button" disabled>신청</button>
						<% }else{ %>
						<button type="button">신청</button>
						<% } %>
					</td>
				</tr>
				<% } %>
				<tr>
					<td colspan="8"><div id="ampaginationsm"></div></td>
				</tr>
			</table>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="http://localhost:9000/Subway/main/footer.jsp"></jsp:include>
	
</body>
</html>
<% }else{ %>
	<script>
		location.href="http://localhost:9000/Subway/member/login.jsp";
	</script>
<% }%>