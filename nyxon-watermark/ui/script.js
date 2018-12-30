$(function(){
	window.onload = function(e){
		window.addEventListener('message', function(event){

			var item = event.data;
			if (item !== undefined && item.type === "wm") {

				if (item.display === true) {
					$('#wm').delay(100).fadeIn( "slow" );
				} else if (item.display === false) {
					$('#wm').fadeOut( "slow" );
				}
			}
		});
	};
});