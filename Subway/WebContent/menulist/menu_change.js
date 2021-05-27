$(document).ready(function(){
	$(document).on('click','#all',function(event){
		history.pushState(null,null,event.target.href);
		$('.item').fadeIn(3000);
		$('.menulist').load(event.target.href+' .menulist ul');
		$('.detail_menu').load(event.target.href+' .detail_menu ul');
		event.preventDefault();
		$(".item").fadeOut(500);
	})
	
	$(window).on('popstate',function(event){
		$('.menulist').load(location.href+' .menulist ul');
	})
});

$(document).ready(function(){
	$(document).on('click','#classic',function(event){
		history.pushState(null,null,event.target.href);
		$('.menulist').load(event.target.href+' .menulist ul');
		$('.detail_menu').load(event.target.href+' .detail_menu ul');
		event.preventDefault();
		$(".item").fadeOut(500);
	});
		 
	$(window).on('popstate',function(event){
		$('.menulist').load(location.href+' .menulist ul');
	})
	
});

$(document).ready(function(){
	$(document).on('click','#fresh',function(event){
		history.pushState(null,null,event.target.href);
		$('.menulist').load(event.target.href+' .menulist ul');
		$('.detail_menu').load(event.target.href+' .detail_menu ul');
		event.preventDefault();
		$(".item").fadeOut(500);
	});
		 
	$(window).on('popstate',function(event){
		$('.menulist').load(location.href+' .menulist ul');
	})
});

$(document).ready(function(){
	$(document).on('click','#premium',function(event){
		history.pushState(null,null,event.target.href);
		$('.menulist').load(event.target.href+' .menulist ul');
		$('.detail_menu').load(event.target.href+' .detail_menu ul');
		event.preventDefault();
		$(".item").fadeOut(500);
	});
	
	$(window).on('popstate',function(event){
		$('.menulist').load(location.href+' .menulist ul');
	}); 

});

$(document).ready(function(){
	$("#btnout").click(function(){
		$(".item").fadeOut(500);
	})
});