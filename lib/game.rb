class Game
  attr_reader :playerone, :playertwo

  def initialize(playerone, playertwo)
    @playerone = playerone
    @playertwo = playertwo
    @counter = 0
  end

  def attack(player)
    player.receive_damage
  end

  def current_player
    (@counter % 2).zero? ? @playerone : @playertwo
  end

  def opponent
    (@counter % 2).zero? ? @playertwo : @playerone
  end

  def change_turn
    @counter += 1 
  end
  
end