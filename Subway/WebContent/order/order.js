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
	
	/*
	$("[name='vegetable_choice']").click(function(){
		if($(this).prop('checked')){
			$("#s1").hide();
			$("#vege_option").append($(this).val() + " ").css("padding-bottom","10px");
		}else if($("#vegetable_01").is('checked') == false){
			alert(this.value);
		}
	});
	*/
	
	$("[name='vegetable_choice']").change(function(){
		var value = $(this).val();
		var checked = $(this).prop('checked');
		var $label = $(this).parent();
		var $span = $(this).next().next();
		if(checked){
			$("#s1").hide();
			$("#vege_option").append(value + " ").css("padding-bottom","10px");
		}else {
			$("#vege_option").text("");
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
	
	
	var price = parseInt($("#count_price").val());
	$("#minus").click(function(){
		if($("#count_result").val() > 1){
			$("#count_result").val(parseInt($("#count_result").val())-1);
			$("#count_price").val(parseInt($("#count_price").val())-price);
		}
	});
	
	$("#plus").click(function(){
		$("#count_result").val(parseInt($("#count_result").val())+1);
		$("#count_price").val(parseInt($("#count_price").val())+price);
	});	
	
	$("#orderBtn").click(function(){
		order_confirm.submit();
	});
	
	
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
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_0").text(parseInt($("#total_price_0").text())-price_1);
			//$("#bottom_total_price").text($("#total_price").text());	

		}
	});
	
	$("#plus_0").click(function(){
		$("#count_result_0").text(parseInt($("#count_result_0").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_0").text(parseInt($("#total_price_0").text())+price_1);
		//$("#bottom_total_price").text($("#total_price").text());
	});
	
	
	var price_1 = parseInt($("#total_price_1").text());
	$("#minus_1").click(function(){
		if($("#count_result_1").text() > 1){
			$("#count_result_1").text(parseInt($("#count_result_1").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_1").text(parseInt($("#total_price_1").text())-price_1);
			//$("#bottom_total_price").text($("#total_price").text());	

		}
	});
	
	$("#plus_1").click(function(){
		$("#count_result_1").text(parseInt($("#count_result_1").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_1").text(parseInt($("#total_price_1").text())+price_1);
		//$("#bottom_total_price").text($("#total_price").text());
	});
	
	var price_2 = parseInt($("#total_price_2").text());
	$("#minus_2").click(function(){
		if($("#count_result_2").text() > 1){
			$("#count_result_2").text(parseInt($("#count_result_2").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_2").text(parseInt($("#total_price_2").text())-price_1);
			//$("#bottom_total_price").text($("#total_price").text());	

		}
	});
	
	$("#plus_2").click(function(){
		$("#count_result_2").text(parseInt($("#count_result_2").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_2").text(parseInt($("#total_price_2").text())+price_1);
		//$("#bottom_total_price").text($("#total_price").text());
	});
	
	
	var price_3 = parseInt($("#total_price_3").text());
	$("#minus_3").click(function(){
		if($("#count_result_3").text() > 1){
			$("#count_result_3").text(parseInt($("#count_result_3").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#total_price_3").text(parseInt($("#total_price_3").text())-price_1);
			//$("#bottom_total_price").text($("#total_price").text());	

		}
	});
	
	$("#plus_3").click(function(){
		$("#count_result_3").text(parseInt($("#count_result_3").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#total_price_3").text(parseInt($("#total_price_3").text())+price_1);
		//$("#bottom_total_price").text($("#total_price").text());
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
			menulist.push(($(this).next()).val());
		});
		for(var i=0; i<menulist.length; i++){
			total_price += Number(menulist[i]);
		}
		$("#bottom_total_price").text(total_price);
	});
	
	
	
	$("#choice_delete").click(function(){
		
		
	});
	
	
});