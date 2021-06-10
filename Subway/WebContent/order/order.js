$(document).ready(function(){
	//체크시 옵션값 적용
	$("#15cm").click(function(){
		$("#sub_option").text(this.value);
	});
	$("#30cm").click(function(){
		$("#sub_option").text(this.value);
	});
	
	$("#bread_01").click(function(){
		$("#bread_option").text(this.value);
	});
	$("#bread_02").click(function(){
		$("#bread_option").text(this.value);
	});
	$("#bread_03").click(function(){
		$("#bread_option").text(this.value);
	});
	$("#bread_04").click(function(){
		$("#bread_option").text(this.value);
	});
	$("#bread_05").click(function(){
		$("#bread_option").text(this.value);
	});
	$("#bread_06").click(function(){
		$("#bread_option").text(this.value);
	});
	
	$("#cheese_01").click(function(){
		$("#cheese_option").text(this.value);
	});
	$("#cheese_02").click(function(){
		$("#cheese_option").text(this.value);
	});
	$("#cheese_03").click(function(){
		$("#cheese_option").text(this.value);
	});
	
	$("#vegetable_01").click(function(){
		$("#vege_option").text(this.value);
	});
	$("#vegetable_02").click(function(){
		$("#vege_option").text(this.value);
	});
	$("#vegetable_03").click(function(){
		$("#vege_option").text(this.value);
	});
	$("#vegetable_04").click(function(){
		$("#vege_option").text(this.value);
	});
	$("#vegetable_05").click(function(){
		$("#vege_option").text(this.value);
	});
	$("#vegetable_06").click(function(){
		$("#vege_option").text(this.value);
	});
	$("#vegetable_07").click(function(){
		$("#vege_option").text(this.value);
	});
	$("#vegetable_08").click(function(){
		$("#vege_option").text(this.value);
	});
	
	$("#sauce_01").click(function(){
		$("#sau_option").text(this.value);
	});
	$("#sauce_02").click(function(){
		$("#sau_option").text(this.value);
	});
	$("#sauce_03").click(function(){
		$("#sau_option").text(this.value);
	});
	$("#sauce_04").click(function(){
		$("#sau_option").text(this.value);
	});
	$("#sauce_05").click(function(){
		$("#sau_option").text(this.value);
	});
	$("#sauce_06").click(function(){
		$("#sau_option").text(this.value);
	});
	
	$("#side_01").click(function(){
		$("#side_option").text(this.value);
	});
	$("#side_02").click(function(){
		$("#side_option").text(this.value);
	});
	$("#side_03").click(function(){
		$("#side_option").text(this.value);
	});
	$("#side_04").click(function(){
		$("#side_option").text(this.value);
	});
	$("#side_05").click(function(){
		$("#side_option").text(this.value);
	});
	
	$("#cookie_06").click(function(){
		$("#set_option").text(this.value);
	});
	$("#cookie_01").click(function(){
		$("#set_option").text(this.value);
	});
	$("#cookie_02").click(function(){
		$("#set_option").text(this.value);
	});
	$("#cookie_03").click(function(){
		$("#set_option").text(this.value);
	});
	$("#cookie_04").click(function(){
		$("#set_option").text(this.value);
	});
	$("#cookie_05").click(function(){
		$("#set_option").text(this.value);
	});
	$("#beverage_01").click(function(){
		$("#set_option").text(this.value);
	});
	$("#beverage_02").click(function(){
		$("#set_option").text(this.value);
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
				$span.css("color","#FFFFFF");
				if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='cookie_choice']:checked").val() == "탄산음료 16oz") {
					$("#set_price").text('+ 1900원');
					$("input[name='set_price_hidden']").attr('value','1900원');
					$("#set_price").css("font-weight","bold");
				}else if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='cookie_choice']:checked").val() == "탄산음료 22oz"){
					$("#set_price").text('+ 2100원');
					$("input[name='set_price_hidden']").attr('value','2100원');
					$("#set_price").css("font-weight","bold");
				}
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
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
				$span.css("color","#FFFFFF");
				if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "탄산음료 16oz") {
					$("#set_price").text('+ 1900원');
					$("input[name='set_price_hidden']").attr('value','1900원');
					$("#set_price").css("font-weight","bold");
				}else if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "탄산음료 22oz"){
					$("#set_price").text('+ 2100원');
					$("input[name='set_price_hidden']").attr('value','2100원');
					$("#set_price").css("font-weight","bold");
				}
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
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
			$span.css("color","#FFFFFF");
		});
		
		$("input[name='beverage_choice']").each(function(){
			var value1 = $(this).val();
			var checked1 = $(this).prop('checked');
			var $label1 = $(this).parent();
			var $span1 = $(this).next().next();
			$label1.css("background-color","#FFFFFF");
			$span1.css("color","#FFFFFF");
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
	
	
	var price = parseInt($("#count_price").text());
	$("#minus").click(function(){
		if($("#count_result").text() > 1){
			$("#count_result").text(parseInt($("#count_result").text())-1);
			//$("#count_price").text(parseInt($("#count_price").text())-8000);
			$("#count_price").text(parseInt($("#count_price").text())-price);
		}
	});
	
	$("#plus").click(function(){
		$("#count_result").text(parseInt($("#count_result").text())+1);
		//$("#count_price").text(8000+parseInt($("#count_price").text()));
		$("#count_price").text(parseInt($("#count_price").text())+price);
	});
	
	$("#count_price").click(function(){
		alert($("#count_price").text());
	})
	
});