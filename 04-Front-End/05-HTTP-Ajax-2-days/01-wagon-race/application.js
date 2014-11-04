$(document).ready(function() {
  alert('Click when you are ready for a ride')
  var play1 = 1;
  var play2 = 1;

  $(document).on('keyup', function(e) {
    if (String.fromCharCode(e.which) == 'A') {
      if (play1 < 18) {
        play1 = play1 + 1;
        update_player_position("player1", play1);
      }
      else {
        alert("Player 1 has finished")
      }
    }

    if (String.fromCharCode(e.which) == 'P') {
      if (play2 < 18) {
        play2 = play2 + 1;
        update_player_position("player2", play2);
      }
      else {
        alert("Player 2 has finished")
      }
    }

  });
});



function update_player_position(player, i) {
  $('#'+ player +'_race td').eq(i - 1).removeClass('active');
  $('#'+ player +'_race td').eq(i).addClass('active');
};

