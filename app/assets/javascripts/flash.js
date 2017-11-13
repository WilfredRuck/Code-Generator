 $(document).ready(function(){
    setTimeout(function() {
      $('#success').fadeOut('slow');
    }, 3000); // <-- time in milliseconds
});

 function copyText(code) {
	clipboard.writeText(code);
  
	$('#copied').append("Copied!");

	$('#copied').fadeOut(3000);
}