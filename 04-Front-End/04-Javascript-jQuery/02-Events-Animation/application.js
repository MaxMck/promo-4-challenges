
$(function() {
  $('#message').hide();
  $('#message').slideDown("slow");
  $('#message').on('click', function(e) {
    $(this).slideUp();
  });
});