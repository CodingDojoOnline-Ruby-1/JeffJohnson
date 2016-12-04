require_relative 'human'

class Samurai < Human
	@@count=0
	attr_accessor :strength, :intelligence, :health, :stealth 
	def initialize
		super
		@health = 200
		@@count += 1
	end
	def heal
		@health +=10
		self
	end
	def death_blow(obj)
		if obj.class.ancestors.include? (Human)
			obj.attack(obj)
			@health=0
		end
		self
	end
	def meditate
		@health = 200
		self
	end
	def how_many
		puts ("There are #{@@count} Samurai")
	end
	

end

s = Samurai.new
