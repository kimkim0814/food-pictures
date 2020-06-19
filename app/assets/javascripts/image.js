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
		$('.start p').fadeIn(800);
	},200); 
	setTimeout(function(){
		$('.start').fadeOut(1000);
	},1000); 
  
});