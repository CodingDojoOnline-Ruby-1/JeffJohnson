require_relative 'human'

class Ninja < Human
	attr_accessor :strength, :intelligence, :health, :stealth 
	def initialize
		super
		@stealth = 175
	end
	def steal(obj)
		if obj.class.ancestors.include? (Human)
			obj.attack(obj)
			@health += 10
		end
		self
	end
	def get_away
		@health -= 15
		self
	end

end