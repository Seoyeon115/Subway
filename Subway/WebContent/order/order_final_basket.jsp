<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.subway.vo.*, com.subway.dao.*, java.util.*" %>
<%
	MenuDAO dao = new MenuDAO();
	MemberDAO mdao = new MemberDAO();
	
	SessionVO svo = (SessionVO) session.getAttribute("svo");
	
	ArrayList<OrderVO> basketlist = dao.selectBasket(svo.getEmail());
	MemberVO memvo = mdao.getCoupon(svo.getEmail());
	
	String count_result = request.getParameter("menu_count_hidden");
	int count_price = basketlist.get(0).getPrice() * Integer.parseInt(count_result);
	
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>주문서</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/order.css">
	<script src="../order/js/jquery-3.6.0.min.js"></script>
	<script src="order.js"></script>
	<script>
	
		$(document).ready(function(){
			$("#listBtn").click(function(){
				var id = $(this).attr("id");
				
				if(id == "img1"){
					$(this).attr("src","http://localhost:9000/Subway/order/order_images/bill_list_btn2.png").css("float","right").css("margin","10px 0 0 15px");
					$(this).attr("id","img2");
					$("#addSide").show();
					$("#addSet").show(); 
				}else{
					$(this).attr("src","http://localhost:9000/Subway/order/order_images/bill_list_btn.png").css("float","right").css("margin","10px 0 0 15px");
					$(this).attr("id","img1");
					$("#addSide").hide();
					$("#addSet").hide();
				}
			});
			
			if(<%= count_price %><10000){
				$("select option[value='2000']").prop('disabled',true);
				$("select option[value='3000']").prop('disabled',true);
				$("select option[value='4000']").prop('disabled',true);
			}else 
				if(10000<=<%= count_price %> && <%= count_price %><20000){
				$("select option[value='2000']").prop('disabled',false);
				$("select option[value='3000']").prop('disabled',true);
				$("select option[value='4000']").prop('disabled',true);
			}else if(20000<=<%= count_price %> && <%= count_price %><30000){
				$("select option[value='2000']").prop('disabled',false);
				$("select option[value='3000']").prop('disabled',false);
				$("select option[value='4000']").prop('disabled',true);
			}else if(30000<=<%= count_price %>){
				$("select option[value='2000']").prop('disabled',false);
				$("select option[value='3000']").prop('disabled',false);
				$("select option[value='4000']").prop('disabled',false);
			} 
			
			$("#useCoupon").click(function(){
				var select = $('#coupon option:selected').val();
				var count_price = <%= count_price %>;
				var coupon1 = 2000;
				var coupon2 = 3000;
				var coupon3 = 4000;
				if(select == 'choiceCoupon'){
					alert("쿠폰을 선택해주세요.");
					$("#coupon").focus();
					return false;
				}else if(select == '2000') {
					$("#couponTotal").val("2000");
					$("#finalTotal").val(count_price-coupon1);
				}else if(select == '3000'){
					$("#couponTotal").val("3000");
					$("#finalTotal").val(count_price-coupon2);
				}else if(select == '4000'){
					$("#couponTotal").val("4000");
					$("#finalTotal").val(count_price-coupon3);
				}
			});
			
			$("#pay_btn").click(function(){
				orderfinalForm.submit();
			});
		});
		
	</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="order_content">
		<section class="order_title">
			<div>
				<h1>Home-sub</h1>
				<span>온라인 주문 시 배달되는 서비스입니다.</span>
			</div>
			<article class="order_step2">
				<div>
					<img src="http://localhost:9000/Subway/order/order_images/step01_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step02_off_bg.png">
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_off.png">
					<img src="http://localhost:9000/Subway/order/order_images/step03_on_bg.png">
					<div>
						<span>STEP 3</span><br>
						<span>주문하기</span>
					</div>
					<img src="http://localhost:9000/Subway/order/order_images/step_bg_on.png">
					<img src="http://localhost:9000/Subway/order/order_images/step04_off_bg.png">
				</div>
			</article>
		</section>

		<section class="menu_list">
			<div class="menu_sandwich">
				<form name="orderfinalForm" action="orderlistProcess.jsp" method="post">
				<%-- <input type="hidden" name="idx" value="<%= idx %>"> --%>
				<input type="hidden" name="count_result" value="<%= count_result %>">
				<input type="hidden" name="count_price" value="<%= count_price %>">
				<div class="order_detail">
					<section class="order_form_box">
						<h2>픽업 매장</h2>
						<div class="store_form">
							<div>
								<dl>
									<dt>매장명</dt>
									<dd>주소</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>방문포장/매장식사</dt>
									<dd>
										<input type="radio" value="방문포장" name="take"><label>방문포장 </label>
										<input type="radio" value="매장식사" name="take"><label>매장식사</label>
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>전화번호</dt>
									<dd>
										<input type="text" name="hp" style="outline:none;">
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>주문시 요청사항</dt>
									<dd>
										<input type="text" name="ask" id="ask" placeholder="주문시 요청사항을 입력하세요" style="outline:none;">
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>일회용품</dt>
									<dd>
										<input type="radio" value="" name="" id="">일회용품(스푼, 포크 등)을 사용하지 않겠습니다.
									</dd>
								</dl>
							</div>
						</div>
						<h2>할인 방법 선택</h2>
						<div class="coupon_choice">
							<dl>
								<dt>쿠폰 사용</dt>
								<dd>
									<% if(memvo.getCoupon1() != null || memvo.getCoupon2() != null || memvo.getCoupon3() != null){ %>
										<select name="coupon" id="coupon" style="color:black;">
											<option id="choiceCoupon" value="choiceCoupon">쿠폰을 선택해주세요.</option>
											<% if(memvo.getCoupon1() != null){ %>
												<option id="2000" value="2000">2000원 할인 쿠폰(10,000원 이상 구매시)</option>
											<% } %>
											<% if(memvo.getCoupon2() != null){ %>
												<option id="3000" value="3000">3000원 할인 쿠폰(20,000원 이상 구매시)</option>
											<% } %>
											<% if(memvo.getCoupon3() != null){ %>
												<option id="4000" value="4000">4000원 할인 쿠폰(30,000원 이상 구매시)</option>
											<% } %>
										</select>
									<% } %> 
									<% if(memvo.getCoupon1() == null && memvo.getCoupon2() == null && memvo.getCoupon3() == null){ %>
										<select name="coupon" id="coupon" style="color:lightgray;">
											<option id="couponNone" value="couponNone">보유하신 쿠폰이 없습니다.</option>
										</select>
									<% } %> 
									<div></div>
									<a id="useCoupon" style="cursor:pointer;">쿠폰 사용</a>
								</dd>
							</dl>
						</div>
						<h2>결제 수단 선택</h2>
						<div class="pay_choice">
							<div>
								<dl>
									<dt>현금 영수증 신청</dt>
									<dd>
										<ul>
											<li><a href="#">발금안함</a></li>
											<li><a href="#">개인소득공제</a></li>
											<li><a href="#">사업자증빙용</a></li>
										</ul>
									</dd>
								</dl>
							</div>
							<div>
								<dl>
									<dt>결제 수단</dt>
									<dd>
										<ul>
											<li><a href="#">신용카드</a></li>
										</ul>
									</dd>
								</dl>
							</div>
						</div>
					</section>
					<section class="final_menu_confirm">
						<h2>주문내역</h2>
						<div class="menu_confirm">
							<% if(basketlist.get(0).getSub() != null){ %> 
							<dl>
								<dt>
									<%= basketlist.get(0).getKor_name() %>
									<span id="option"><%= basketlist.get(0).getSub() %>, <%= basketlist.get(0).getBread_choice() %>, <%= basketlist.get(0).getCheese_choice() %>, <%= basketlist.get(0).getVegetable_list() %>, <%= basketlist.get(0).getSauce_choice() %></span>
								</dt>
								<dd style="margin-top:10px;">
									<span id="menu_amount"><%= count_result %>개</span>
									<strong id="menu_price">
										<%= count_price %>
									</strong>원
									<% if(basketlist.get(0).getSide_choice() != null || basketlist.get(0).getSingle_set().equals("세트")){ %>
									<img src="http://localhost:9000/Subway/order/order_images/bill_list_btn.png" style="width:22px; cursor:pointer;" id="listBtn">
									<% } %>
								</dd>
							</dl> 
							<% }else{ %>
							<dl style="margin-top:-10px; padding:10px 0;">
								<dt>
									<%= basketlist.get(0).getKor_name() %>
								</dt>
								<dd>
									<span id="menu_amount"><%= count_result %>개</span>
									<strong id="menu_price"><%= count_price %> </strong>원
								</dd>
							</dl>
							<% } %>
							
							<% if(basketlist.get(0).getIdx() == null){ if(basketlist.get(0).getSide_choice() != null){%>
							<dl id="addSide" style="border-bottom:none; margin-bottom:-20px; display:none;">
								<dt><%= basketlist.get(0).getSide_choice() %></dt>
								<dd style="margin-right:35px;">
									<strong id="menu_price"><%= 0 %> </strong>원
								</dd>
							</dl>
							<% }if(basketlist.get(0).getSingle_set().equals("세트")){ %>
							<dl id="addSet" style="border-top:1px solid lightgray; padding-top:25px; margin-top:15px; display:none;">
								<dt>
									<%= basketlist.get(0).getSingle_set() %>
									<span id="option"><%= basketlist.get(0).getCookie_choice() %>, <%= basketlist.get(0).getBeverage_choice() %></span>
								</dt>
								<dd style="margin-top:10px; margin-right:35px;">
									<strong id="menu_price">
										<% if(basketlist.get(0).getSingle_set().equals("세트")){ if(basketlist.get(0).getBeverage_choice().equals("탄산음료 16oz")){%>1900
										<% }else if(basketlist.get(0).getBeverage_choice().equals("탄산음료 22oz")){ %>2100
										<% }} %>
									</strong>원
								</dd>
							</dl>
							<% }} %>
						</div>
					</section>
					<section class="total_amount">
						<h2>총 결제 금액</h2>
						<div class="amount">
							<% if(basketlist.get(0).getIdx() == null){ %>
							<dl>
								<dt>총 주문 금액</dt>
								<dd>
									<strong id="orderTotal">
										<%= count_price %>
									</strong>원
								</dd>
							</dl>
							<dl>
								<dt>쿠폰 사용</dt>
								<dd>
									<input type="text" id="couponTotal" name="couponTotal" value="0" readonly>원
								</dd>
							</dl>
							<dl>
								<dt>잔여 결제금액</dt>
								<dd>
									<input type="text" id="finalTotal" name="finalTotal" value="<%= count_price %>" readonly>원
								</dd>
							</dl>
							<% }else{ %>
							<dl>
								<dt>총 주문 금액</dt>
								<dd>
									<strong id="orderTotal">
										<%= count_price %>
									</strong>원
								</dd>
							</dl>
							<dl>
								<dt>쿠폰 사용</dt>
								<dd>
									<input type="text" id="couponTotal" name="couponTotal" value="0" readonly>원
								</dd>
							</dl>
							<dl>
								<dt>잔여 결제금액</dt>
								<dd>
									<input type="text" id="finalTotal" name="finalTotal" value="<%= count_price %>" readonly>원
								</dd>
							</dl>
							<% } %>
						</div>
					</section>
					<section class="pay_btn">
						<button type="button" class="btn_style" id="pay_btn">결제하기</button>
					</section>
				</div>
				</form>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>