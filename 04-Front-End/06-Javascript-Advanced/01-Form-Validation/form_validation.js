// Your validation code will go in there.
// Write your validation functions, and bind events
// in a jQuery DOM ready callback

$(document).ready(function() {

  $( "#first_name" ).keyup(function() {
    $(".form-group:nth-child(1)").addClass('has-success');
    $( "#first_name" ).focusout(function() {
      if ( $( "#first_name" ).val() == "" ) {
        $(".form-group:nth-child(1)").removeClass('has-success');
        $(".form-group:nth-child(1)").addClass('has-error');
      }
      else {
        $(".form-group:nth-child(1)").addClass('has-success');
        $(".form-group:nth-child(1)").removeClass('has-error');
      }
      checkit();
    });
    checkit();
  });

  $( "#last_name" ).keyup(function() {
    $(".form-group:nth-child(2)").addClass('has-success');
    $( "#last_name" ).focusout(function() {
      if ( $( "#last_name" ).val() == "" ) {
        $(".form-group:nth-child(2)").removeClass('has-success');
        $(".form-group:nth-child(2)").addClass('has-error');
      }
      else {
        $(".form-group:nth-child(2)").addClass('has-success');
        $(".form-group:nth-child(2)").removeClass('has-error');
      }
      checkit();
    });
    checkit();
  });

  $( "#address" ).keyup(function() {
    $(".form-group:nth-child(3)").addClass('has-success');
    $( "#address" ).focusout(function() {
      if ( $( "#address" ).val() == "" ) {
        $(".form-group:nth-child(3)").removeClass('has-success');
        $(".form-group:nth-child(3)").addClass('has-error');
      }
      else {
        $(".form-group:nth-child(3)").addClass('has-success');
        $(".form-group:nth-child(3)").removeClass('has-error');
      }
      checkit();
    });
    checkit();
  });


  $( "#zip_code" ).focusout(function() {
    if ($( "#zip_code" ).val().match(/^[0-9]{5}$/)) {
      $(".form-group:nth-child(5)").addClass('has-success');
      $(".form-group:nth-child(5)").removeClass('has-error');
    }
    else {
      $(".form-group:nth-child(5)").removeClass('has-success');
      $(".form-group:nth-child(5)").addClass('has-error');
    }
  checkit();
  });


  $( "#city" ).keyup(function() {
    $(".form-group:nth-child(6)").addClass('has-success');
    $( "#city" ).focusout(function() {
      if ( $( "#city" ).val() == "" ) {
        $(".form-group:nth-child(6)").removeClass('has-success');
        $(".form-group:nth-child(6)").addClass('has-error');
      }
      else {
        $(".form-group:nth-child(6)").addClass('has-success');
        $(".form-group:nth-child(6)").removeClass('has-error');
      }
      checkit();
    });
    checkit();
  });

  $( "#email" ).keyup(function() {
    $(".form-group:nth-child(7)").addClass('has-success');
    checkit();
  });

   $( "#mobile_phone" ).keyup(function() {
    $(".form-group:nth-child(8)").addClass('has-success');
    checkit();
  });

  $( "#tos" ).click(function() {
    $( "#tos" ).addClass('has-success');
    checkit();
  });

});

function checkit() {
  if ( $( ".has-success").length === 8 ) {
      $( ".btn" ).prop('disabled', false);
    }
  else {
      $( ".btn" ).prop('disabled', true);
    }
};




