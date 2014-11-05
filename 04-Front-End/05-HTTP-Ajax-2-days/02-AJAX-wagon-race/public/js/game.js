$(document).ready(function() {

  var session_id = 0;
  var game_id = 0;
  var elapsed_time = 0;
  var time1 = 0;
  var time2 = 0;
  var time3 = 0;

  $.get( "/session/create", function( data ) {
    session_id = data.id;
    console.log("Page chargée !");
  });

  $('.racer_table').hide();
  $('form').hide();

  $('p button').on('click', function(e) {
    $(this).hide();
    $('form').show();
  });

  $('form button').on('click',function(e) {
    e.preventDefault();
    var namep1 = $('#player1').val()
    var namep2 = $('#player2').val()
    $.ajax({
      type: 'POST',
      url: "http://localhost:4567/session/" + session_id + "/game/create",
      data: JSON.stringify(
      {
        "players": [
          { "name": namep1 },
          { "name": namep2 }
        ]
      }),
      contentType: 'application/json',
      success: function(data) {
        console.log(data);
        $('form').hide();
        $('.racer_table').show();
        return game_id = data.game.id;
      },
      error: function(data) {
        console.log('Un problème est survenu');
      }
    });

    $('form').hide();
    $('.racer_table').show();
    var play1 = 1;
    var play2 = 1;
    time1 = jQuery.now()

    $(document).on('keyup', function(e) {
      if (String.fromCharCode(e.which) == 'A') {
        if (play1 < 18) {
          play1 = play1 + 1;
          update_player_position("player1", play1);
        }
        else {
          $('.racer_table').hide();
          time2 = jQuery.now()
          time3 = (time2 - time1)/1000
          $('#game-box h1').append("<div class='player-1 text-center'><p>"+ namep1 +" won the game</p><p>Time elapsed : "+ time3 +"sec</p><a href='/' class='btn btn-danger'>Restart</a></div>");
          $.ajax({
            type: "POST",
            url: "/game/" + game_id + "/finish",
            data: JSON.stringify(
            {
              "winner": 1,
              "elapsed_time": time3
            }),
            success: function(fin) {
              console.log(fin);
            },
            error: function(fin) {
              console.log('Un problème est survenu');
            }
          });
        }
      }

      if (String.fromCharCode(e.which) == 'P') {
        if (play2 < 18) {
          play2 = play2 + 1;
          update_player_position("player2", play2);
        }
        else {
          $('.racer_table').hide();
          time2 = jQuery.now()
          time3 = (time2 - time1)/1000
          $('#game-box h1').append("<div class='player-1 text-center'><p>"+ namep2 +" won the game</p><p>Time elapsed : "+ time3 +"sec</p><a href='/' class='btn btn-danger'>Restart</a></div>");
          $.ajax({
            type: "POST",
            url: "/game/" + game_id + "/finish",
            data: JSON.stringify(
            {
              "winner": 2,
              "elapsed_time": time3
            }),
            success: function(fin) {
              console.log(fin);
            },
            error: function(fin) {
              console.log('Un problème est survenu');
            }
          });
        }
      }
    });
  });
});



function update_player_position(player, i) {
  $('#'+ player +'_race td').eq(i - 1).removeClass('active');
  $('#'+ player +'_race td').eq(i).addClass('active');
};




