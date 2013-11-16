class Player
  def play_turn(warrior)
  	@health
  	unless warrior.feel.enemy?
  		if warrior.feel.captive?
	  		warrior.rescue!
  		else
	  		@health ||= warrior.health
	  		if warrior.health < @health
	  			warrior.walk!
	  			@health = warrior.health
	  		else
		  		if warrior.health < 20
		  			warrior.rest!
		  		else
		  			warrior.walk!
		  		end
		  	end
	  	end
  	end
  	warrior.attack! if warrior.feel.enemy?
  end
end