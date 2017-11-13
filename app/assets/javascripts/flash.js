 $(document).ready(function(){
    setTimeout(function() {
      $('#success').fadeOut('slow');
    }, 5000); // <-- time in milliseconds
});

 function copyText(code) {
  clipboard.writeText(code);
}