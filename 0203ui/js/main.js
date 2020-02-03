

$(function(){
    var autocomplete_text =["인천국제공항 (ICN)","서울 김포 (GMP)","오사카 (OSAA)","도쿄 (TYOA)","홍콩 국제 (HKG)","마카오 (MFM)","타이베이 (TPET)",
	"카오슝 (KHH)","상하이 (CSHA)","칭다오 (TAO)","방콕 (BKKT)","싱가포르 (SINS)","푸켓 (HKT)","베트남 다낭 (DAD)","베트남 호치민시티 (SGN)","베트남 나트랑 (나짱) 캄란 (CXR)",
	"파리 (PARI)","로마 (ROME)","런던 (LOND)","바르셀로나 (BCN)","이스탄불 (ISTA)","블라디보스토크 (VVO)"];
         $("#autocomplete").autocomplete({
            source: autocomplete_text
         });
})
$(function(){
    var autocomplete_text = ["인천국제공항 (ICN)","서울 김포 (GMP)","오사카 (OSAA)","도쿄 (TYOA)","홍콩 국제 (HKG)","마카오 (MFM)","타이베이 (TPET)",
	"카오슝 (KHH)","상하이 (CSHA)","칭다오 (TAO)","방콕 (BKKT)","싱가포르 (SINS)","푸켓 (HKT)","베트남 다낭 (DAD)","베트남 호치민시티 (SGN)","베트남 나트랑 (나짱) 캄란 (CXR)",
	"파리 (PARI)","로마 (ROME)","런던 (LOND)","바르셀로나 (BCN)","이스탄불 (ISTA)","블라디보스토크 (VVO)"];
         $("#autocomplete2").autocomplete({
            source: autocomplete_text
         });
})

$(function() {
    $( "#testDatepicker" ).datepicker({
    });
});
$(function() {
    $( "#testDatepicker2" ).datepicker({
    });
});
	$(document).ready(function() {
		//사용할 배너
		var $banner = $(".banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//배너 이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $bannerLength = $banner.children().length;//배너 이미지의 갯수
		var rollingId;

		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 3500);//다음 이미지로 롤링 애니메이션 할 시간차
		function rollingStart() {
			$banner.css("width", $bannerWidth * $bannerLength + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 3000, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
	}); 

