/**********************
 * 공지사항 - 글쓰기 폼 체크
 *********************/
function noticeFormCheck(){
	var ntitle = document.getElementById("ntitle");
	
	if(ntitle.value == ""){
		alert("제목을 입력해주세요");
		ntitle.focus();
		return false;
	}else{
		notice_write.submit();
	}
}