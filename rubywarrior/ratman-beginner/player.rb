class Player
  def play_turn(warrior)
  	warrior.walk! if warrior.feel.empty?
  	warrior.attack! if warrior.feel.enemy?
  end
end