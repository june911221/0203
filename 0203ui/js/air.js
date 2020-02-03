
	//사이드메뉴
$(window).scroll(  
    function(){  
        //스크롤의 위치가 상단에서 800보다 크면  
        if($(window).scrollTop() > 738){  
            $('aside').addClass("sidefixed");  
            //위의 if문에 대한 조건 만족시 fixed라는 class를 부여함  
        }else{  
            $('aside').removeClass("sidefixed");  
            //위의 if문에 대한 조건 아닌경우 fixed라는 class를 삭제함  
        }  
    }  
);  

	//스크롤로 메뉴위치확인
$(document).ready(function() {
	var jbOffset = $ ('nav').offset();
	$(window).scroll(function(){
		if($(document).scrollTop()>jbOffset.top) {
			$('nav').addClass('jbFixed');
			}
			else{
				$('nav').removeClass('jbFixed');
				}
				});
});


 $( function() {

    $( "#tabs" ).tabs();

  } );
