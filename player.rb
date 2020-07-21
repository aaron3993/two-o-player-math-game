class Player
  attr_accessor :lives, :player_name

  def initialize(player_name)
    @player_name = player_name
    @lives = 3
  end
end