$(function(){

  $('.header').hover(

         function(){
      $('.explain').fadeIn();
    },
        function(){
      $('.explain').fadeOut();
    }
  )
  setTimeout(function(){
		$('.start p').fadeIn(1600);
	},300); 
	setTimeout(function(){
		$('.start').fadeOut(500);
	},1500); 
  
});