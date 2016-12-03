class Human
	attr_accessor :strength, :intelligence, :stealth, :health 
	def initialize
		@strength=3
		@intelligence=3
		@stealth=3
		@health=100
		puts("created new human")
	end

	def defendAttack
		@health -=20
		self
	end

	def attack(obj)
		if obj.class.ancestors.include? Human
			obj.defendAttack			
		end
		@strength -=1  #this added to help verify over-all logic flow 
		self
	end
end


guy= Human.new
joe = Human.new

guy.attack(joe)

# puts (guy.health, guy.strength) /#ask how to do this

print "guy's health: ", guy.health, "  guy's strength: ", guy.strength, "\n"
print "joe's health: ", joe.health, "  joe's strength: ", joe.strength, "\n"