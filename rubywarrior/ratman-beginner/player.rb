class Player
  def play_turn(warrior)
  	unless warrior.feel.enemy?
  		if warrior.health < 20
  			warrior.rest!
  		else
  			warrior.walk!
  		end
  	end
  	warrior.attack! if warrior.feel.enemy?
  end
end