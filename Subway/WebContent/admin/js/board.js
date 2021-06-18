$(document).ready(function() {

	/***************************************************************************
	 * 게시판 - 글쓰기 폼 체크
	 */

	$("#btnWrite").click(function() {
		if ($("#btitle").val() == "") {
			alert("제목을 입력해주세요.");
			$("#btitle").focus();
			return false;
		} else {
			notice_write.submit();
		}
	});

	$("#btnCalcel").click(function() {
		$("#btitle").val("");
		$("#bcontent").val("");
	});

	/***************************************************************************
	 * 게시판 - 글쓰기 폼 체크
	 */
	$("#btnUpdate").click(function() {
		if ($("#btitle").val() == "") {
			alert("제목을 입력해주세요");
			$("#btitle").focus();
			return false;
		} else {
			notice_update_form.submit();
		}
	});

}); // ready function
