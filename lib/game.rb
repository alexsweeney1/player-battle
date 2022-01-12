class Game
  attr_reader :playerone, :playertwo

  def initialize(playerone, playertwo)
    @playerone = playerone
    @playertwo = playertwo
  end

  def attack(player)
    player.receive_damage
  end

end