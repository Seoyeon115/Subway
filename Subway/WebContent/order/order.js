$(document).ready(function(){
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
				if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='cookie_choice']:checked").val() == "16oz") {
					$("#set_price").text('1900원');
					$("input[name='set_price_hidden']").attr('value','1900원');
					$("#set_price").css("font-weight","bold");
				}else if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='cookie_choice']:checked").val() == "22oz"){
					$("#set_price").text('2100원');
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
				if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "16oz") {
					$("#set_price").text('1900원');
					$("input[name='set_price_hidden']").attr('value','1900원');
					$("#set_price").css("font-weight","bold");
				}else if($("input[name='cookie_choice']:checked").length == 1 && $("input[name='beverage_choice']:checked").val() == "22oz"){
					$("#set_price").text('2100원');
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

	
	$("#next7").click(function(){
		order_detail.submit();
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
	
});