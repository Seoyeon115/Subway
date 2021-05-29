<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/join.css">
	<script src="http://localhost:9000/Subway/member/js/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function(){
			
			$("#joinbtn").click(function(){
				if($("#email1").val()==""){
					alert("이메일을 입력해주세요");
					$("#email1").focus();
					return false;
				}else if($("#email2").val()==""){
					alert("이메일 주소를 선택해주세요");
					$("#email3").focus();
					return false;
				}else if($("#email4").val()==""){
					alert("이메일 확인을 입력해주세요");
					$("#email4").focus();
					return false;
				}else if($("#email5").val()==""){
					alert("이메일 주소를 선택해주세요");
					$("#email6").focus();
					return false;
				}else if($("#pass").val() == ""){
					alert("비밀번호를 입력해주세요");
					$("#pass").focus();
					return false;
				}else if($("#cpass").val() == ""){
					alert("비밀번호 확인을 입력해주세요");
					$("#cpass").focus();
					return false;
				}else if($("#hp1").val() == ""){
					alert("휴대폰 번호를 입력해주세요");
					$("#hp1").focus();
					return false;
				}else if($("#hp2").val() == ""){
					alert("휴대폰 번호를 입력해주세요");
					$("#hp2").focus();
					return false;
				}else if($("#hp3").val() == ""){
					alert("휴대폰 번호를 입력해주세요");
					$("#hp3").focus();
					return false;
				}else{
					join_form.submit();
				}
			});
			
			/** 회원가입 - 이메일 선택 **/
			$("#email3").change(function(){
				if($("#email3").val() == "직접 입력"){
					alert("주소를 선택해주세요");
					$("#email2").val("");
					$("#email3").focus();
					return false;
				}else{
					$("#email2").val($("#email3").val());
				}
			});
			
			/** 회원가입 - 이메일 확인 선택 **/
			$("#email6").change(function(){
				if($("#email6").val() == "직접 입력"){
					alert("주소를 선택해주세요");
					$("#email5").val("");
					$("#email6").focus();
					return false;
				}else{
					$("#email5").val($("#email6").val());
				}
			});
			/** 회원가입 - 이메일 체크 **/
			$("#email6").blur(function(){
				
				if($("#email1").val() != "" && $("#email2").val() != ""  && $("#email4").val() != ""  && $("#email5").val() != ""){
					if($("#email1").val() == $("#email4").val() && $("#email2").val() == $("#email5").val() ){
						$("#emailmsg").text("이메일이 동일합니다.").css({"color":"blue","fontSize":"13px","padding-left":"30px","display":"inline-block"});
						return true;
					}else if($("#email1").val() == $("#email4").val() && $("#email2").val() != $("#email5").val()){
						$("#emailmsg").text("이메일이 동일하지 않습니다.").css({"color":"red","fontSize":"13px","padding-left":"30px","display":"inline-block"});
						$("#email1").val("");
						$("#email2").val("");
						$("#email3").val("");
						$("#email4").val("");
						$("#email5").val("");
						$("#email6").val("");
						$("#email1").val("").focus();
						return false;
					}else{
						$("#emailmsg").text("이메일이 동일하지 않습니다.").css({"color":"red","fontSize":"13px","padding-left":"30px","display":"inline-block"});
						$("#email1").val("");
						$("#email2").val("");
						$("#email3").val("");
						$("#email4").val("");
						$("#email5").val("");
						$("#email6").val("");
						$("#email1").val("").focus();
						return false;
					}
				}
			});
			
			/** 회원가입 - 비밀번호 체크 **/
			$("#cpass").blur(function(){
				
				if($("#pass").val() != "" && $("#cpass").val() != ""){
					if($("#pass").val() == $("#cpass").val()){
						$("#msg").text("패스워드가 동일합니다.").css({"color":"blue","fontSize":"13px","padding-left":"10px","display":"inline-block"});
						return true;
					}else{
						$("#msg").text("패스워드가 동일하지 않습니다.").css({"color":"red","fontSize":"13px","padding-left":"10px","display":"inline-block"});
						$("#cpass").val("");
						$("#pass").val("").focus();
						return false;
					}
				}
			});

		});
	</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>회원가입</h1>
			<div class="join">
				<div class="header">정보입력</div>
						<h3>기본 정보(필수 입력)</h3>
							<div class="form1">
							<form name="join_form" action="#" method="get">
								<ul>
									<li>
										<label>아이디(이메일)</label>
										<input type="text" name="email1" id="email1" placeholder="이메일 입력"> &nbsp;&nbsp;@
										<input type="text" name="email2" id="email2" placeholder="이메일 입력">
										<select id="email3" onchange="emailCheck()">
											<option value="직접 입력">직접 입력</option>
											<option value="naver.com">naver.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="daum.net">daum.net</option>
										</select>
										<button type="button">중복확인</button>
									</li>
									<li>
										<label>아이디(이메일)확인</label>
										<input type="text" name="email3" id="email4" placeholder="이메일 입력"> &nbsp;&nbsp;@
										<input type="text" name="email4" id="email5" placeholder="이메일 입력">
										<select id="email6">
											<option value="직접 입력">직접 입력</option>
											<option value="naver.com">naver.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="daum.net">daum.net</option>
										</select>
										<div id="emailmsg"></div>
									</li>
									<li>
										<label>비밀번호</label>
										<input type="password" name="pass" id="pass" placeholder="비밀번호 입력">
									</li>
									<li>
										<label>비밀번호 확인</label>
										<input type="password" name="cpass" id="cpass" placeholder="비밀번호 입력">
										<div id="msg"></div>
									</li>
									<li>
										<label>휴대폰 번호</label>
										<input type="text" name="hp1" id="hp1" placeholder="휴대폰번호 입력"> &nbsp;&nbsp;&nbsp;-
										<input type="text" name="hp2" id="hp2" placeholder="휴대폰번호 입력"> &nbsp;&nbsp;&nbsp;-
										<input type="text" name="hp3" id="hp3" placeholder="휴대폰번호 입력"> 
									</li>
								</ul>
							</form>
							</div>
							
							<h4>추가 정보(선택 입력)</h4>
							<div class="form2">
							<form name="join_form2" action="#" method="get">
								<ul>
									<li>
										<label>우편번호</label>
										<input type="text" name="mail" id="mail" placeholder="우편번호 입력">
										<button type="button">우편번호검색</button>
									</li>
									<li>
										<label>주소</label>
										<input type="text" name="addr" id="addr" placeholder="주소 입력">
									</li>
									<li>
										<label>상세주소</label>
										<input type="text" name="detail_addr" id="detail_addr" placeholder="상세주소 입력">
									</li>
								</ul>
							</form>
							</div>
						
			</div>
			<div class="check">
				<button type="button" id="joinbtn">회원가입 완료</button>
			</div>
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>

</body>
</html>