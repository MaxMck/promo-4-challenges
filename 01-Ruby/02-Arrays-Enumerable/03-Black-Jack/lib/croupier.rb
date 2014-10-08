require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score > 21
    return "You are a loser."
  elsif player_score == 21
    return "Black Jack !"
  elsif player_score < bank_score
    return "You are a loser."
  else
    return "You beat the bank! You win."
  end
end


def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
rep = "y"
me = 0
bank = pick_bank_score

while rep == "y" || rep == "yes"
  puts "Card ? (type 'y' or 'yes' for a new card)"
  rep = gets.chomp
  me = me + pick_player_card
  state_of_the_game(me, bank)
end

end_game_message(me,bank)

end
