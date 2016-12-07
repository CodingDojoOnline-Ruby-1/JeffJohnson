class Planet
	attr_accessor :name, :description, :population
	@@count=0

	 def initialize (name, description = "", population = 0)
	 	@name = name
	 	@description = description
	 	@population = population
	 end
end


class SolarSystem
	attr_accessor :name, :planets, :num_planets
	def initialize (name = "Andromeda")
		@name = name
	 	@planets = []
	 	@num_planets =0	 	
	 end

	def addPlanet(obj)
		if obj.class.ancestors.include? (Planet)
			@planets.push(obj.name)
			@num_planets +=1
			self
		else
			puts "Error'; \'add_planet(obj)\' method requires a Planet class object."
		end
	end

	def superNova
		@planets = []
	 	@num_planets =0	 
	 	self
	end
end



# p1 = Planet.new("Earth", "The Blue Planet", 7e9 )
# p2 = Planet.new("Mars", "The Red Planet", 0)
# puts "Planet 1 name: ", p1.name
# puts "Planet 1 description: ", p1.description
# puts "Planet 1 population: ", p1.population

# s1 = SolarSystem.new("Sol")
# s2 = SolarSystem.new
# puts "SolarSystem 1 name: ", s1.name
# puts "SolarSystem 2 name: ", s2.name

# s1.addPlanet(p1)
# s1.addPlanet(p2)
# puts "Number of planets in #{s1.name} solar system: ", s1.num_planets
# puts "Planet names: ", s1.planets
# puts "Super NOVA!"
# s1.superNova
# puts "Number of planets in #{s1.name} solar system: ", s1.num_planets
# puts "Planet names: ", s1.planets

# p3 = "test failure scenario"
# s1.addPlanet(p3)


