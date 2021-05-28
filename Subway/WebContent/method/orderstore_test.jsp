<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/Subway/images/icon.png">
	<title>SUBWAY 써브웨이</title>
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/main.css">
	<link rel="stylesheet" href="http://localhost:9000/Subway/css/orderstore_test.css">
	<style>
	#container { width: 1000px; margin: auto; /*border:1px solid red;*/ }
   .slide_wrap { position: relative; width: 1000px; margin: auto; padding-bottom: 30px; /*border:1px solid green;*/ }
   .slide_box { width: 100%; margin: auto; overflow-x: hidden; /*border:1px solid violet;*/  }
   .slide_content { display: table; float: left; width: 1000px; height: 400px;  }
   .slide_content.slide01 img { float:left;}
   .slide_content.slide02 img { float:left;}
   .slide_content.slide03 img { float:left;}
   .slide_content.slide04 img { float:left;}
   .slide_content.slide05 img { float:left;}
   
   .slide_btn_box > button { position: absolute; top: 50%; margin-top: -45px; width: 20px; height: 20px; font-size: 16px; color: #999; 
   border: 1px solid #f6f6f6; cursor: pointer; }
   .slide_btn_box > .slide_btn_prev { left: -200px; background:url("http://localhost:9000/Subway/images/slider_arr2.png"); }
   .slide_btn_box > .slide_btn_next { right: -200px; background:url("http://localhost:9000/Subway/images/slider_arr.png");}
   .slide_pagination { position: absolute; left: 50%; bottom: 0; list-style: none; margin: 0; padding: 0; transform: translateX(-50%); }
   .slide_pagination .dot { display: none; width: 15px; height: 15px; margin: 0 5px; overflow: hidden; background: #ddd; border-radius: 50%; transition: 0.3s; }
   .slide_pagination .dot.dot_active { background: #333; }
   .slide_pagination .dot a { display: block; width: 100%; height: 100%; }
	</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<h1>써브웨이 이용방법</h1>
		<div class="orderstore_tab">
			<div class="orderstore_text"><a href="#">매장에서 주문하기</a></div>
			<div class="orderstore_text2"><a href="#">주문 TIP</a></div>
		</div>
		<div class="orderstore_content" id="store_order">			
	<div id="container">
	    <div class="slide_wrap">
	      <div class="slide_box">
	        <div class="slide_list clearfix">
	          <div class="slide_content slide01">
		          <div class="step_content">
						<ol>
							<li class="active"><div class="step">STEP<strong>1</strong></div></li>
							<li><div class="step">STEP<strong>2</strong></div></li>
							<li><div class="step">STEP<strong>3</strong></div></li>
							<li><div class="step">STEP<strong>4</strong></div></li>
							<li><div class="step">STEP<strong>5</strong></div></li>						
						</ol>
				 </div>
	            <img src="http://localhost:9000/Subway/images/img_store_order01.png">
	             <div class="info_content">
	            	<ol>
	            	 <p class="step_num">STEP 1</p>
					<li class="active" style="margin-top:0; opacity:1">
						<strong>메뉴 선택</strong>
						<p class="txt1">메뉴를 고르세요.<br />샌드위치(15cm 또는 30cm)와<br />찹샐러드 중 선택 가능합니다.</p>
						<div class="btns_wrapper">
                                <a class="btn bgc_bw size1" href="http://localhost:9000/Subway/menulist/sandwich.jsp" style="width:100px;" target="_blank">
                                    <span>샌드위치 메뉴</span><i class="i_mag">&nbsp;</i>
                                </a>
                                <div class="btn_mag"><img src="http://localhost:9000/Subway/images/btn_mag.png"></div>
                         </div>
					</li>
					</ol>
				 </div> 
	          </div>
	          <div class="slide_content slide02">
	            <div class="step_content">
						<ol>
							<li><div class="step">STEP<strong>1</strong></div></li>
							<li class="active"><div class="step">STEP<strong>2</strong></div></li>
							<li><div class="step">STEP<strong>3</strong></div></li>
							<li><div class="step">STEP<strong>4</strong></div></li>
							<li><div class="step">STEP<strong>5</strong></div></li>								
						</ol>
				 </div>
	           	<img src="http://localhost:9000/Subway/images/img_store_order02.png">
	           	<div class="info_content">
	           	<ol>
	           		 <p class="step_num">STEP 2</p>
					<li class="active" style="margin-top:0; opacity:1">
						<strong>빵 선택 <span>(찹샐러드 선택 시 제외)</span></strong>
						<p class="txt1">매장에서 직접 구운 6가지 종류 중<br />고객님이 원하는 빵으로<br />추가비용 없이 선택 가능합니다.</p>
						<div class="btns_wrapper">
							<a class="btn bgc_bw size1" href="#" style="width:105px;" target="_blank">
							<span>빵 종류</span><i class="i_mag">&nbsp;</i></a>
							<div class="btn_mag"><img src="http://localhost:9000/Subway/images/btn_mag.png"></div>
						</div>
					</li>
				</ol>
				</div> 
	          </div>
	          <div class="slide_content slide03">
	            <div class="step_content">
						<ol>
							<li><div class="step">STEP<strong>1</strong></div></li>
							<li><div class="step">STEP<strong>2</strong></div></li>
							<li class="active"><div class="step">STEP<strong>3</strong></div></li>
							<li><div class="step">STEP<strong>4</strong></div></li>
							<li><div class="step">STEP<strong>5</strong></div></li>						
						</ol>
				 </div>
	            <img src="http://localhost:9000/Subway/images/img_store_order03.png">
	            <div class="info_content">
	            <ol>
	            	 <p class="step_num">STEP 3</p>
					<li class="active" style="margin-top:0; opacity:1">
						<strong>추가토핑 선택</strong>
						<p class="txt1">나만의 메뉴를 더욱 풍성하게 즐기세요.</p>
						<div class="btns_wrapper">
							<a class="btn bgc_bw size1" href="/menuList/sandwich?tab=ITEM_SANDWICH.TOPPING" style="width:142px;" target="_blank"><span>추가토핑 메뉴</span><i class="i_mag">&nbsp;</i></a>
							<div class="btn_mag"><img src="http://localhost:9000/Subway/images/btn_mag.png"></div>
						</div>
					</li>
				</ol>
				</div> 
	          </div>
	          <div class="slide_content slide04">
	          	<div class="step_content">
						<ol>
							<li><div class="step">STEP<strong>1</strong></div></li>
							<li><div class="step">STEP<strong>2</strong></div></li>
							<li><div class="step">STEP<strong>3</strong></div></li>
							<li class="active"><div class="step">STEP<strong>4</strong></div></li>
							<li><div class="step">STEP<strong>5</strong></div></li>							
						</ol>
				 </div>
	           <img src="http://localhost:9000/Subway/images/img_store_order04.png">
	           <div class="info_content">
	            <ol>
	            	 <p class="step_num">STEP 4</p>
					<li class="active" style="margin-top:0; opacity:1">
						<strong>야채&amp;소스 선택</strong>
							<p class="txt1">나만의 스타일을 완성하는 단계!<br />원하지 않는 야채는 빼고 좋아하는 야채는 더하세요. <br />오늘의 기분에 맞는 소스를 선택해주세요. </p>
						<div class="btns_wrapper">
							<a class="btn bgc_bw size1" href="/freshInfo?tab=vegetable" style="width:122px;" target="_blank"><span>야채 종류</span><i class="i_mag">&nbsp;</i></a>
							<div class="btn_mag"><img src="http://localhost:9000/Subway/images/btn_mag.png"></div>
						</div>
						<div class="btns_wrapper2">
							<a class="btn bgc_bw size1" href="/freshInfo?tab=sauce" style="width:122px;" target="_blank"><span>소스 종류</span><i class="i_mag">&nbsp;</i></a>
							<div class="btn_mag"><img src="http://localhost:9000/Subway/images/btn_mag.png"></div>
						</div> 
					</li>
				</ol>
				</div> 
	          </div>
	          <div class="slide_content slide05">
	          	<div class="step_content">
						<ol>
							
							<li><div class="step">STEP<strong>1</strong></div></li>
							<li><div class="step">STEP<strong>2</strong></div></li>
							<li><div class="step">STEP<strong>3</strong></div></li>
							<li><div class="step">STEP<strong>4</strong></div></li>
							<li class="active"><div class="step">STEP<strong>5</strong></div></li>						
						</ol>
				 </div>
	            <img src="http://localhost:9000/Subway/images/img_store_order05.png">
	            <div class="info_content">
	            <ol>
	            	<p class="step_num">STEP 5</p>
					<li class="active" style="margin-top:0; opacity:1">
						<strong>세트 선택</strong>
							<p class="txt1">세트로 구매하시면 할인혜택을 <br />받으실 수 있습니다. 세트로 <br />더욱 든든하고 알차게 즐기세요.</p>
							<div class="btns_wrapper">
                                 <a class="btn bgc_bw size1" href="/menuList/sidedrink" style="width:133px;" target="_blank">
                                        <span>스마일 썹</span><i class="i_mag">&nbsp;</i>
                                  </a>
                                  <div class="btn_mag"><img src="http://localhost:9000/Subway/images/btn_mag.png"></div>
							</div>
					</li>
				</ol>
				</div>
	          </div>
	        </div>
	        <!-- // .slide_list -->
	      </div>
	      <!-- // .slide_box -->
	      <div class="slide_btn_box">
	        <button type="button" class="slide_btn_prev"></button>
	        <button type="button" class="slide_btn_next"></button>
	      </div> 
	      <!-- // .slide_btn_box -->
	      <ul class="slide_pagination"></ul>
	      <!-- // .slide_pagination -->
	    </div>
	    <!-- // .slide_wrap -->
	  </div>
  

			</div>
		</div>
	</div>-
	
	<!-- footer -->
	<jsp:include page="../main/footer.jsp"></jsp:include>
	
	 <script>
    (function () {
      const slideList = document.querySelector('.slide_list');  // Slide parent dom
      const slideContents = document.querySelectorAll('.slide_content');  // each slide dom
      const slideBtnNext = document.querySelector('.slide_btn_next'); // next button
      const slideBtnPrev = document.querySelector('.slide_btn_prev'); // prev button
      const pagination = document.querySelector('.slide_pagination');
      const slideLen = slideContents.length;  // slide length
      const slideWidth = 1000; // slide width
      const slideSpeed = 300; // slide speed
      const startNum = 0; // initial slide index (0 ~ 4)
      
      slideList.style.width = slideWidth * (slideLen + 2) + "px";
      
      // Copy first and last slide
      let firstChild = slideList.firstElementChild;
      let lastChild = slideList.lastElementChild;
      let clonedFirst = firstChild.cloneNode(true);
      let clonedLast = lastChild.cloneNode(true);

      // Add copied Slides
      slideList.appendChild(clonedFirst);
      slideList.insertBefore(clonedLast, slideList.firstElementChild);

      // Add pagination dynamically
      let pageChild = '';
      for (var i = 0; i < slideLen; i++) {
        pageChild += '<li class="dot';
        pageChild += (i === startNum) ? ' dot_active' : '';
        pageChild += '" data-index="' + i + '"><a href="#"></a></li>';
      }
      pagination.innerHTML = pageChild;
      const pageDots = document.querySelectorAll('.dot'); // each dot from pagination

      slideList.style.transform = "translate3d(-" + (slideWidth * (startNum + 1)) + "px, 0px, 0px)";

      let curIndex = startNum; // current slide index (except copied slide)
      let curSlide = slideContents[curIndex]; // current slide dom
      curSlide.classList.add('slide_active');

      /** Next Button Event */
      slideBtnNext.addEventListener('click', function() {
        if (curIndex <= slideLen - 1) {
          slideList.style.transition = slideSpeed + "ms";
          slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";
        }
        if (curIndex === slideLen - 1) {
          setTimeout(function() {
            slideList.style.transition = "0ms";
            slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
          }, slideSpeed);
          curIndex = -1;
        }
        curSlide.classList.remove('slide_active');
        pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active');
        curSlide = slideContents[++curIndex];
        curSlide.classList.add('slide_active');
        pageDots[curIndex].classList.add('dot_active');
      });

      /** Prev Button Event */
      slideBtnPrev.addEventListener('click', function() {
        if (curIndex >= 0) {
          slideList.style.transition = slideSpeed + "ms";
          slideList.style.transform = "translate3d(-" + (slideWidth * curIndex) + "px, 0px, 0px)";
        }
        if (curIndex === 0) {
          setTimeout(function() {
            slideList.style.transition = "0ms";
            slideList.style.transform = "translate3d(-" + (slideWidth * slideLen) + "px, 0px, 0px)";
          }, slideSpeed);
          curIndex = slideLen;
        }
        curSlide.classList.remove('slide_active');
        pageDots[(curIndex === slideLen) ? 0 : curIndex].classList.remove('dot_active');
        curSlide = slideContents[--curIndex];
        curSlide.classList.add('slide_active');
        pageDots[curIndex].classList.add('dot_active');
      });

      /** Pagination Button Event */
      let curDot;
      Array.prototype.forEach.call(pageDots, function (dot, i) {
        dot.addEventListener('click', function (e) {
          e.preventDefault();
          curDot = document.querySelector('.dot_active');
          curDot.classList.remove('dot_active');
          
          curDot = this;
          this.classList.add('dot_active');

          curSlide.classList.remove('slide_active');
          curIndex = Number(this.getAttribute('data-index'));
          curSlide = slideContents[curIndex];
          curSlide.classList.add('slide_active');
          slideList.style.transition = slideSpeed + "ms";
          slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 1)) + "px, 0px, 0px)";
        });
      });
    })();
  </script>
</body>
</html>