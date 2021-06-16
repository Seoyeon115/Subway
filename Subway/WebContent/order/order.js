/*****************************order_detail.jsp****************************/

$(document).ready(function(){
	//체크시 옵션값 적용
	$("[name='sub']").click(function(){
		$("#sub_option").text(this.value);
	});
	$("[name='bread_choice']").click(function(){
		$("#bread_option").text(this.value);
	});
	$("[name='cheese_choice']").click(function(){
		$("#cheese_option").text(this.value);
	});
	
	var vegeCheckArray = [];
	$("[name='vegetable_choice']").change(function(){
		var checked = $(this).prop('checked');
		var idx = vegeCheckArray.indexOf($(this).val());
		if(checked){
			if(!vegeCheckArray.includes($(this).val())){
				vegeCheckArray.push($(this).val());
				$("#s1").hide();
				$("#vege_option").text(vegeCheckArray).css("padding-bottom","10px");
			}
		}else{
			vegeCheckArray.splice(idx,1);
			$("#vege_option").text(vegeCheckArray);
		}
	});
	 
	$("[name='sauce_choice']").click(function(){
		$("#sau_option").text(this.value);
	});
	$("[name='side_choice']").click(function(){
		$("#side_option").text(this.value);
	});
	$("[name='cookie_choice']").click(function(){
		$("#set_option").text(this.value);
	});
	$("[name='beverage_choice']").click(function(){
		$("#set_option2").text(", " + $(this).val());
	});
	
	
	$("#next1").click(function(){
		if($("input[name='sub']:checked").length == 0){
			alert("빵 길이를 선택해주세요");
			return false;
		}else{
			$("#myModal").modal("hide");
		}
	});
	$("input[name='bread_choice']").change(function(){
		$("input[name='bread_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			if(checked){
				$label.css("background-color","#009223");
				$span.css("color","#FFFFFF");
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
			}
		});
		
	});
	
	$("#next2").click(function(){
		if($("input[name='bread_choice']:checked").length == 0){
			alert("빵 종류를 선택해주세요");
			return false;
		}else{
			$("#myModal2").modal("hide");
		}
	});
	
	$("#prev1").click(function(){
		$("#myModal2").modal("hide");
	});
	
	
	$("input[name='cheese_choice']").change(function(){
		$("input[name='cheese_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			if(checked){
				$label.css("background-color","#009223");
				$span.css("color","#FFFFFF");
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
			}
		});
		
	});
	
	$("#next3").click(function(){
		if($("input[name='cheese_choice']:checked").length == 0){
			alert("치즈를 선택해주세요");
			return false;
		}else{
			$("#myModal3").modal("hide");
		}
	});
	
	$("#prev2").click(function(){
		$("#myModal3").modal("hide");
	});
	
	$("input[name='vegetable_choice']").change(function(){
		$("input[name='vegetable_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			if(checked){
				$label.css("background-color","#009223");
				$span.css("color","#FFFFFF");
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
			}
		});
		
	});
	
	$("#next4").click(function(){
		if($("input[name='vegetable_choice']:checked").length == 0){
			alert("야채를 선택해주세요");
			return false;
		}else{
			$("#myModal4").modal("hide");
		}
	});
	
	$("#prev3").click(function(){
		$("#myModal4").modal("hide");
	});
	
	$("input[name='sauce_choice']").change(function(){
		$("input[name='sauce_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			if(checked){
				$label.css("background-color","#009223");
				$span.css("color","#FFFFFF");
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
			}
		});
		
	});
	
	$("#next5").click(function(){
		if($("input[name='sauce_choice']:checked").length == 0){
			alert("소스를 선택해주세요");
			return false;
		}else{
			$("#myModal5").modal("hide");
		}
	});
	
	$("#prev4").click(function(){
		$("#myModal5").modal("hide");
	});
	
	$("input[name='side_choice']").change(function(){
		$("input[name='side_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			if(checked){
				$label.css("background-color","#009223");
				$span.css("color","#FFFFFF");
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
			}
		});
		
	});
	
	$("#next6").click(function(){
		$("#myModal6").modal("hide");
	});
	
	$("#prev5").click(function(){
		$("#myModal6").modal("hide");
	});
	
	$("input[name='cookie_choice']").change(function(){
		$("input[name='cookie_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			if(checked){
				$("#set").prop('checked',true);
				$label.css("background-color","#009223");
				$label.css("color","#FFFFFF");
				if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "탄산음료 16oz") {
					$("#set_price").text('1900원');
					$("input[name='set_price_hidden']").attr('value','1900원');
					$("#set_price").css("font-weight","bold");
				}else if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "탄산음료 22oz"){
					$("#set_price").text('2100원');
					$("input[name='set_price_hidden']").attr('value','2100원');
					$("#set_price").css("font-weight","bold");
				}
			}else {
				$label.css("background-color","#FFFFFF");
				$label.css("color","#333");
			}
		});
		
	});
	
	$("input[name='beverage_choice']").change(function(){
		$("input[name='beverage_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			if(checked){
				$("#set").prop('checked',true);
				$label.css("background-color","#009223");
				$label.css("color","#FFFFFF");
				if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "탄산음료 16oz") {
					$("#set_price").text('1900원');
					$("input[name='set_price_hidden']").attr('value','1900원');
					$("#set_price").css("font-weight","bold");
				}else if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "탄산음료 22oz"){
					$("#set_price").text('2100원');
					$("input[name='set_price_hidden']").attr('value','2100원');
					$("#set_price").css("font-weight","bold");
				}
			}else {
				$label.css("background-color","#FFFFFF");
				$label.css("color","#333");
			}
		});
		
	});
	
	$("#single").click(function(){
		$("#set_price").text("0원");
		$("input[name='cookie_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			$label.css("background-color","#FFFFFF");
			$label.css("color","#333");
			$("#set_option").text("");
			$("#set_option2").text("");
		});
		
		$("input[name='beverage_choice']").each(function(){
			var value = $(this).val();
			var checked = $(this).prop('checked');
			var $label = $(this).parent();
			var $span = $(this).next().next();
			$label.css("background-color","#FFFFFF");
			$label.css("color","#333");
			$("#set_option").text("");
			$("#set_option2").text("");
		})
	});
	
	$("#prev6").click(function(){
		$("#myModal7").modal("hide");
	});

	
	$("#next7").click(function(){
		if($("input[name='single_set']:checked").length == 0){
			alert("단품/세트를 선택해주세요");
			return false;
		}if($("input[value='세트']:checked").length == 1){
			if($("input[name='cookie_choice']:checked").length == 0){
				alert("쿠키를 선택해주세요");
				return false;
			}else if($("input[name='beverage_choice']:checked").length == 0){
				alert("음료를 선택해주세요");
				return false;
			}else{
				order_detail.submit();
			}
		}else{
			order_detail.submit();
		}
	});
	
	
	/*****************************order_confirm.jsp****************************/
	
	
	
	/*****************************basket.jsp****************************/
	
	$("input:radio[id='allselect']").click(function(){
		$("#menu_radio").prop("checked",true);
		
	})
	$("#orderBtn").click(function(){
		order_confirm.submit();
	});
	
	
	$("#choice_delete").click(function(){
		$("#menu_radio").prop("checked",false);
	});
	
	var price_0 = parseInt($("#total_price_0").text());
	$("#minus_0").click(function(){
		if($("#count_result_0").text() > 1){
			$("#count_result_0").text(parseInt($("#count_result_0").text())-1);
			$("#count_result_hidden_0").val(Number($("#count_result_hidden_0").val())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_0").text(parseInt($("#total_price_0").text())-price_0);
			//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_0));
		}
	});
	
	$("#plus_0").click(function(){
		$("#count_result_0").text(parseInt($("#count_result_0").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_0").text(parseInt($("#total_price_0").text())+price_0);
		$("#count_result_hidden_0").val(Number($("#count_result_hidden_0").val())+1);
		//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_0));
	});
	
	
	
	var price_1 = parseInt($("#total_price_1").text());
	$("#minus_1").click(function(){
		if($("#count_result_1").text() > 1){
			$("#count_result_1").text(parseInt($("#count_result_1").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_1").text(parseInt($("#total_price_1").text())-price_1);
			$("#count_result_hidden_1").val(Number($("#count_result_hidden_1").val())-1);
			//$("#bottom_total_price").text($("#total_price").text());
			//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_1));
		}
	});
	
	$("#plus_1").click(function(){
		$("#count_result_1").text(parseInt($("#count_result_1").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_1").text(parseInt($("#total_price_1").text())+price_1);
		//$("#count_result_hidden_1").val(Number($("#count_result_hidden_1").val())+1);
		//$("#bottom_total_price").text($("#total_price").text());
		//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_1));
	});
	
	
	
	var price_2 = parseInt($("#total_price_2").text());
	$("#minus_2").click(function(){
		if($("#count_result_2").text() > 1){
			$("#count_result_2").text(parseInt($("#count_result_2").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_2").text(parseInt($("#total_price_2").text())-price_1);
			//$("#bottom_total_price").text($("#total_price").text());	
			//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_2));
		}
	});
	
	$("#plus_2").click(function(){
		$("#count_result_2").text(parseInt($("#count_result_2").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_2").text(parseInt($("#total_price_2").text())+price_1);
		//$("#bottom_total_price").text($("#total_price").text());
		//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_2));
	});
	
	
	var price_3 = parseInt($("#total_price_3").text());
	$("#minus_3").click(function(){
		if($("#count_result_3").text() > 1){
			$("#count_result_3").text(parseInt($("#count_result_3").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_3").text(parseInt($("#total_price_3").text())-price_1);
			//$("#bottom_total_price").text($("#total_price").text());	
			//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_3));

		}
	});
	
	$("#plus_3").click(function(){
		$("#count_result_3").text(parseInt($("#count_result_3").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_3").text(parseInt($("#total_price_3").text())+price_1);
		//$("#bottom_total_price").text($("#total_price").text());
		//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_3));
	});
	
	
	
	var price_4 = parseInt($("#total_price_4").text());
	$("#minus_4").click(function(){
		if($("#count_result_4").text() > 1){
			$("#count_result_4").text(parseInt($("#count_result_4").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_4").text(parseInt($("#total_price_4").text())-price_1);
			//$("#bottom_total_price").text($("#total_price").text());	
			//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_4));

		}
	});
	
	$("#plus_4").click(function(){
		$("#count_result_4").text(parseInt($("#count_result_4").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_4").text(parseInt($("#total_price_4").text())+price_1);
		//$("#bottom_total_price").text($("#total_price").text());
		//$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_4));
	});
	
	
	var ll = 0;
	if($("input[id='menu_checkbox0']").is(':checked')){
		ll += Number($("#total_price_0").text());
		$("#bottom_total_price").text(ll);
	}
	
	$("#minus_0").click(function(){
		if($("input[id='menu_checkbox0']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_0));
		}
	});
	
	$("#plus_0").click(function(){
		$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_0));
	});
	
	
	if($("input[id='menu_checkbox1']").is(':checked')){
		ll += Number($("#total_price_1").text());
		$("#bottom_total_price").text(ll);
	}
	
	$("#minus_1").click(function(){
		if($("input[id='menu_checkbox1']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_1));
		}
	});
	$("#plus_1").click(function(){
		if($("input[id='menu_checkbox1']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_1));
		}
	});
	
	
	if($("input[id='menu_checkbox2']").is(':checked')){
		ll += Number($("#total_price_2").text());
		$("#bottom_total_price").text(ll);
	}
	
	$("#minus_2").click(function(){
		if($("input[id='menu_checkbox2']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_2));
		}
	});
	$("#plus_2").click(function(){
		if($("input[id='menu_checkbox2']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_2));
		}
	});
	
	
	if($("input[id='menu_checkbox3']").is(':checked')){
		ll += Number($("#total_price_3").text());
		$("#bottom_total_price").text(ll);
	}
	
	$("#minus_3").click(function(){
		if($("input[id='menu_checkbox3']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_3));
		}
	});
	$("#plus_3").click(function(){
		if($("input[id='menu_checkbox3']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_3));
		}
	});
	
	
	if($("input[id='menu_checkbox4']").is(':checked')){
		ll += Number($("#total_price_4").text());
		$("#bottom_total_price").text(ll);
	}
	
	$("#minus_4").click(function(){
		if($("input[id='menu_checkbox4']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())-parseInt(price_4));
		}
	});
	$("#plus_4").click(function(){
		if($("input[id='menu_checkbox4']").is(':checked')){
			$("#bottom_total_price").text(parseInt($("#bottom_total_price").text())+parseInt(price_4));
		}
	});
	
	
	
	$("input[id='allselect']").click(function(){
		if($("input[id='allselect']").is(':checked')){
			$("input[name='menu_checkbox']").prop("checked",true);
		}
	})
	
	
	
	
	$("#orderBtn").click(function(){
		order_confirm.submit();
	});
	
	
	
	$("input[name='menu_checkbox']").click(function(){
		var menulist = [];
		var total_price = 0;
		$("input:checkbox[name='menu_checkbox']:checked").each(function(){
			var count = Number(($(this).prev()).val());
			var menu_price = Number(($(this).next()).val());
			menulist.push(menu_price * count);
		});
		for(var i=0; i<menulist.length; i++){
			total_price += Number(menulist[i]);
		}
		$("#bottom_total_price").text(total_price);
		
	});
	
	
	
	$("#choice_delete").click(function(){
		var orderlist = [];
		
		$("input:checkbox[name='menu_checkbox']:checked").each(function(){
			orderlist.push(($(this).prev()).val());
		});
		
		var objorderlist = {"orderlist":orderlist};
		
		$.ajax({
			url : "basketSend.jsp",
			data: objorderlist,
			contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
            type        :   "post",
            
            success:function(list){
            	
            },
            error:function(jqXHR, textStatus, errorThrown){
                alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
                self.close();
            }
		});
	});
	
	
});