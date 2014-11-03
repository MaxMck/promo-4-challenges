
$(function() {
  $('#message').hide();
  $('#message').delay(500).slideDown("slow");
  $('#message').on('click', function(e) {
    $(this).slideUp();
  });
 $('#message-wrapper').on('mouseenter', function(e) {
    $('#message').slideDown();
  });
  $('#message').on('mouseleave', function(e) {
    $(this).slideUp();
  });
});