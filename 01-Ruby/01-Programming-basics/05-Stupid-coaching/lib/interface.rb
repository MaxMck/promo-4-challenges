require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Just do it baby"
message = gets.chomp
while coach_answer_enhanced(message) != ""
  puts coach_answer_enhanced(message)
  message = gets.chomp
end

