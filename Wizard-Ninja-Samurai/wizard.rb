require_relative 'human'

class Wizard < Human
	attr_accessor :strength, :intelligence, :health, :stealth 
	def initialize
		super
		@health = 50
		@intelligence = 25
	end
	def heal
		@health +=10
		self
	end
	def fireball(obj)
		if obj.class.ancestors.include? (Human)
			obj.health -= 20
			self
		else
			self
		end
				
	end

end

