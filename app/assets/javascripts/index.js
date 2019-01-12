 // Initiates the copying of the code created
function copyText(code) {
	clipboard.writeText(code);
	$('#copied').append("Copied!");
	// Outputs the text "Copied" to user for confirmation
	setTimeout(() => {
		$('#success').fadeOut('slow');
		$('.code-gen-section').slideToggle("slow");
		$('#copied').slideToggle("slow");
	}, 2000);
	
}

function copyText2(code, el) {
	clipboard.writeText(code);
	el.innerText = 'Copied!';
	setTimeout(() => {
		el.innerText = code;
	}, 2000);
}