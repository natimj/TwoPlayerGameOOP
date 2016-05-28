


require_relative 'players'
require_relative 'game_code'


class Main


  def open
    puts "Player 1: Please provide your name?"
    name = gets.chomp
    player_1 = Player.new(name)

    puts "Player 2: Please provide your name?"
    name = gets.chomp
    player_2 = Player.new(name)

    game = Game.new(player_1, player_2)

    game.play

  end






#while true
  #game.play

  # second route

  # Step 1
  #game.generate_question

  # Step 2
  # ask the current player for an answer

  # Step 3
  # check his answer


end

lets_play =Main.new
lets_play.open
