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
				$label.css("background-color","#009223");
				$span.css("color","#FFFFFF");
			}else {
				$label.css("background-color","#FFFFFF");
				$span.css("color","#333");
			}
		});
		
	});
	
	$("input[name='bevarage_choice']").change(function(){
		$("input[name='bevarage_choice']").each(function(){
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
	
	$("#next7").click(function(){
		
			order_detail.submit();
			
		
		
		
		
		
	});
	

});