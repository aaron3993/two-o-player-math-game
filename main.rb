load 'player.rb'

load 'question.rb'

class Game
  attr_accessor :current_player

  def initialize
    @player1 = Player.new("Aaron")
    @player2 = Player.new("Jason")
    @current_player = @player1
  end

  def set_current_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def play
    # Or use until
    while @player1.lives > 0 && @player2.lives > 0
      puts "It is #{current_player.player_name}'s turn."
      question = Question.new
      puts "What is #{question.first_number} plus #{question.second_number}?"
      prompt = gets.chomp.to_i
      puts "#{current_player.player_name} answered #{prompt}"
      if prompt != question.answer
        current_player.lives -= 1
      end
      puts "#{current_player.player_name} has #{current_player.lives} lives left."
      if current_player.lives > 0
        set_current_player
      else
        puts "Game over! #{set_current_player.player_name} won with a score of #{current_player.lives}/3."
      end
    end
  end
end

game = Game.new
game.play