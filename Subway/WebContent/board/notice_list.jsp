<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
<link rel="stylesheet" href="http://localhost:9000/Subway/css/board.css">
</head>
<body>
	<!-- header start -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	<!-- header end -->
	<!-- content -->
	<div id="ncontent">
		<h2 class="subTitle">공지사항</h2>

		<!-- 뉴스ㆍ공지사항 list s -->
		<div class="board_list_wrapper">
			<div class="ncontent">
				<p class="board_total">
					총<strong>146</strong>건의 게시글이 있습니다.
				</p>

				<div class="cont_right">
					<div class="form_search">
						<form id="searchForm" method="GET" name="searchForm"
							onsubmit="return view.search();">
							<input name="page" type="hidden" value="1"> <input
								name="subject" placeholder="검색어를 입력하세요" type="text" value="">
							<a class="btn_search" href="#"
								onclick="view.search();return false;"></a>
						</form>
					</div>
				</div>

				<table>
					<caption>공지사항 테이블</caption>
					<colgroup>
						<col width="100px">
						<col width="*">
						<col width="50px">
						<col width="120px">
					</colgroup>
					<tbody>
						<tr class="notice">
							<!-- 공지사항일경우 notice 클래스 추가 -->
							<td><div class="icon_notice"></div></td>
							<td><div class="title">
									<a href="http://localhost:9000/Subway/admin/notice/notice_content_1.jsp" onclick="view.view(244);return false;">써브웨이
										2021년 5월 가격 인상 안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">21.05.03</div></td>
						</tr>
						<tr class="notice">
							<!-- 공지사항일경우 notice 클래스 추가 -->
							<td><div class="icon_notice"></div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(241);return false;">써브웨이와
										함께하는 JTBC '라이브온'</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.11.16</div></td>
						</tr>
						<tr class="notice">
							<!-- 공지사항일경우 notice 클래스 추가 -->
							<td><div class="icon_notice"></div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(232);return false;">써브웨이 앱
										출시 및 앱 사용 불가 매장 안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.06.24</div></td>
						</tr>
						<tr class="notice">
							<!-- 공지사항일경우 notice 클래스 추가 -->
							<td><div class="icon_notice"></div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(220);return false;">써브웨이 그릴드
										랩 &amp; 파니니 일부 매장 판매 안내 </a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">19.10.10</div></td>
						</tr>
						<tr class="notice">
							<!-- 공지사항일경우 notice 클래스 추가 -->
							<td><div class="icon_notice"></div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(214);return false;">써브웨이 모바일
										상품권 이용 안내의 건</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">19.08.20</div></td>
						</tr>
						<tr class="notice">
							<!-- 공지사항일경우 notice 클래스 추가 -->
							<td><div class="icon_notice"></div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(190);return false;">고객 경험
										설문조사 프로그램 안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">18.07.20</div></td>
						</tr>
						<tr>
							<td><div class="num">146</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(244);return false;">써브웨이
										2021년 5월 가격 인상 안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">21.05.03</div></td>
						</tr>
						<tr>
							<td><div class="num">145</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(243);return false;">써브웨이
										고객센터 2021년 설 연휴 휴무 안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">21.02.09</div></td>
						</tr>
						<tr>
							<td><div class="num">144</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(242);return false;">2021년 설날
										당일 매장 영업 안내 </a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">21.02.09</div></td>
						</tr>
						<tr>
							<td><div class="num">143</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(241);return false;">써브웨이와
										함께하는 JTBC '라이브온'</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.11.16</div></td>
						</tr>
						<tr>
							<td><div class="num">142</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(240);return false;">2020년 추석
										당일 매장운영 안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.09.28</div></td>
						</tr>
						<tr>
							<td><div class="num">141</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(239);return false;">써브웨이
										고객센터 2020년 추석 연휴 휴무 안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.09.28</div></td>
						</tr>
						<tr>
							<td><div class="num">140</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(238);return false;">써브웨이와
										함께하는 KBS '오!삼광빌라' </a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.09.21</div></td>
						</tr>
						<tr>
							<td><div class="num">139</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(237);return false;">써브웨이와
										함께하는 tvN '청춘기록'</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.09.07</div></td>
						</tr>
						<tr>
							<td><div class="num">138</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(236);return false;">써브웨이와
										함께하는 tvN '식스센스'</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.09.07</div></td>
						</tr>
						<tr>
							<td><div class="num">137</div></td>
							<td><div class="title">
									<a href="#" onclick="view.view(234);return false;">개인정보
										처리방침 개정안내</a>
								</div></td>
							<td><div></div></td>
							<td><div class="date">20.07.01</div></td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- board 페이지 -->
			<div>
				<div class="pagination">


					<a class="arr prev" href="javascript:void(0);"></a> <a
						class="active" href="#">1</a> <a href="#"
						onclick="paging.page(2);return false;">2</a> <a href="#"
						onclick="paging.page(3);return false;">3</a> <a href="#"
						onclick="paging.page(4);return false;">4</a> <a href="#"
						onclick="paging.page(5);return false;">5</a> <a href="#"
						onclick="paging.page(6);return false;">6</a> <a href="#"
						onclick="paging.page(7);return false;">7</a> <a href="#"
						onclick="paging.page(8);return false;">8</a> <a href="#"
						onclick="paging.page(9);return false;">9</a> <a href="#"
						onclick="paging.page(10);return false;">10</a> <a class="arr next"
						href="javascript:void(0);" onclick="paging.next(15);return false;"></a>

				</div>
			</div>
			<!--// board 페이지 -->
		</div>
		<!--// 뉴스ㆍ공지사항 list e -->
	</div>
	
	<!-- footer start -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<!-- footer end -->
	
</body>
</html>