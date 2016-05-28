
require_relative 'question'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def round(player)
    my_question = Question.new
    puts my_question.display_question
    input=gets.chomp.to_i

    if my_question.check(input)
      player.gain_points
      puts right_msg(player)
    else
      player.lose_health
      puts wrong_msg(player)
    end

  end

  def play
    current_player = @player_1
    while (@player_1.life>0 && @player_1.life>0)
      round(current_player)

      if current_player == @player_1
        current_player = @player_2
      else
        current_player = @player_1
      end

    end
  end

  def right_msg(player) 
    "Good job #{player.name}! The answer is correct.\n
    You just gained an extra point\n
    Life: #{player.life} Points: #{player.points}"
  end

  def wrong_msg(player)
    "Nice try #{player.name}! The answer is wrong.\n
    You just lost a life\n
    Life: #{player.life} Points: #{player.points}"
  end


  




    # put logic of play
    # if in game he did wrong answer
    # player_1.lose_health

end