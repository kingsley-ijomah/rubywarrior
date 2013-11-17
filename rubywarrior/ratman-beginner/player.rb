class Player
  def play_turn(warrior)
  	@health

  	unless warrior.feel.enemy?
  		if warrior.feel.to_s == 'nothing'
  			@health ||= warrior.health
  			if warrior.health < 20
  				if warrior.health < @health
  					warrior.walk!
	  				@health = warrior.health
	  			else
	  				warrior.rest!
	  			end
	  		else
	  			warrior.walk!
	  		end
  		else warrior.feel.to_s == 'Captive'
  			warrior.rescue!
  		end
  	end
  	warrior.attack! if warrior.feel.enemy?
  	@health = warrior.health
  end
end