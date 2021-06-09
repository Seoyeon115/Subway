<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<% 
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.getInfo(email, pass);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/mypage_infomodify.css">
	<script src="http://localhost:9000/Subway/member/js/jquery-3.6.0.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>정보변경</h1>
		<form name="modify_form" action="#" method="post">
			<div class="member_info">
				<div class="member_info2">
					<div class="member_info3">
						<h3>회원 정보</h3>
						<button type="button" class="btn_style" id="modal_btn" data-toggle="modal" data-target="#myModal">비밀번호 변경</button>	
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-content2">
											<div class="modal-header" id="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h3 id="h3style">비밀번호 변경</h3>
												<div class="line"></div>
													<div class="text1">개인정보 보호를 위해 주기적으로 변경해주세요.</div>
													<div class="text2">타인에게 비밀번호가 노출되지 않도록 주의해주세요.</div>			
											</div>										
											<div class="modal-body" id="modal-body">
												<ul>
													<li>
														<label>현재 비밀번호</label>
														<input type="text" name="pass" id="pass" placeholder="현재 비밀번호">
													</li>
													<li>
														<label>새 비밀번호</label>
														<input type="text" name="npass" id="npass" placeholder="비밀번호 변경">
													</li>
													<li>
														<p>※ 반드시 현재의 비밀번호와 다르게 입력해주세요.</p>
													</li>
													<li>
														<label>새 비밀번호 확인</label>
														<input type="text" name="ncpass" id="ncpass" placeholder="비밀번호 변경">
													</li>
													</ul>
													<div class="button div">
														<input type="reset" id="cancel" value="취소">
														<input type="button" id="change_pass" value="변경하기">
													</div>
											</div>
										</div>	
									</div>
								</div>
							</div>								
					</div>
					
					<table border="1" id="email_table">
						<tr>
							<th>이메일 아이디</th>
							<td colspan="5"><%=vo.getEmail() %></td>
						</tr>
					</table>
					<br>
					<table border="1" id="content_table">	
						<tr>
							<th>이름</th>
							<td colspan="5"><%=vo.getName() %></td>
						</tr>
						<tr>
							<th>주소</th>
							<td colspan="5"><%=vo.getAddr() %></td>
						</tr>
						<tr>
							<th>휴대폰 번호</th>
							<td colspan="5"><%=vo.getHp() %><button type="button">정보변경</button></td>
							
						</tr>
						
					</table>
					<p>· 이름이나 생년월일, 성별, 핸드폰 번호 등의 정보가 변경되었다면 본인확인을 통해 정보를 수정할 수 있습니다.</p>
				</div>
			</div>
			<div class="info_button">
				<button type="button">회원탈퇴</button>
				<button type="button">회원정보 변경</button>
			</div>
		</form>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>