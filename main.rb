require "./question.rb"
require "./player.rb"

players = [Player.new("Player 1", "P1"), Player.new("Player 2", "P2")]

while true
  players.each do |player|
    players.each do |player|
      print "#{player.nickname}: #{player.lives}/3 "
    end
    puts "\n----- NEW TURN -----"
    player.ask_question
  end  
end