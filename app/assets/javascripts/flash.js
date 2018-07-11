$(document).ready(function(){
    setTimeout(function() {
      $('#success').fadeOut('slow');
    }, 3000); // <-- time in milliseconds
});

 // Initiates the copying of the code created
 function copyText(code) {
	clipboard.writeText(code);
  	// Outputs the text "Copied" to user for confirmation, fades after 3 seconds
	$('#copied').append("Copied!");

	$('#copied').fadeOut(3000);
}