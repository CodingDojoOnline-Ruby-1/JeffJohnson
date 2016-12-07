require_relative 'solar_system'

RSpec.describe Planet do 	
	it 'Planet should have a name, description and population - all user defined at initialization' do 
		p1 = Planet.new("Earth", "The Blue Planet", 7e9 )
		expect(p1.name).to eq("Earth")
		expect(p1.description).to eq("The Blue Planet")
		expect(p1.population).to eq (7e9)	
	end
	it 'Planet should have a name, description and population - defined name only, description and population are default.' do 
		p2 = Planet.new("Mars")
		expect(p2.name).to eq("Mars")
		expect(p2.description).to eq("")
		expect(p2.population).to eq (0)	
	end
end

RSpec.describe SolarSystem do 
	before(:each) do
		@p1 = Planet.new("Earth", "The Blue Planet", 7e9 )
		@p2 = Planet.new("Mars", "The Red Planet", 0)
		@p3 = "test failure scenario"
		@s1 = SolarSystem.new("Sol")
		@s2 = SolarSystem.new
		@s1.addPlanet(@p1)
		@s1.addPlanet(@p2)
	end
	it "should be initialized with a name, if not its default name should be 'Andromeda'" do		
		expect(@s1.name).to eq("Sol")
		expect(@s2.name).to eq("Andromeda")
	end
	it 'should contain a list of all planets in it.' do 
		
		expect(@s1.planets).to eq(["Earth", "Mars"])
	end
	it 'should have a count of how many planets are in the Solar System.' do 
		expect(@s1.num_planets).to eq(2)
	end
	it 'The planets added to the Solar System should only be from the Planet class' do 
		expect {@s2.addPlanet(@p3)}.to output("Error'; \'add_planet(obj)\' method requires a Planet class object.\n").to_stdout
	end
	it 'should have a method called Super Nova that destroys all of the planets in it' do
		@s1.superNova 
		expect(@s1.planets).to eq([])
		expect(@s1.num_planets).to eq(0)
	end
end
