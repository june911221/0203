	//��ũ�ѷ� �޴���ġȮ��
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

//�α��� â �˾�
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}