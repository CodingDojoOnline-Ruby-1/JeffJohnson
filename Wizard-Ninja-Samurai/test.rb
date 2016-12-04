require_relative 'human'
require_relative 'wizard'
require_relative 'ninja'
require_relative 'samurai'

harry = Human.new
gandalf = Wizard.new
nagato = Ninja.new
shimazu = Samurai.new

#Wizard should have a default health of 50 and intelligence of 25
puts "Wizard's default health: " + gandalf.health.to_s
puts "Wizard's default intelligence: " + gandalf.intelligence.to_s

# Wizard should have a method called heal, which when invoked, heals the Wizard by 10
puts "Heal Wizard; new health: " + gandalf.heal.health.to_s

# Wizard should have a method called fireball, which when invoked, decrease the health of whichever object it attacked by 20
gandalf.fireball(harry)
puts "Harry's health after Wizard's Fireball: " + harry.health.to_s 

# Ninja should have a default stealth of 175
puts "Ninja's default stealth: " + nagato.stealth.to_s

# Ninja should have a steal method, which when invoked, attacks a object and increases the Ninjas health by 10
puts "Ninja steal; new health: " + nagato.steal(harry).health.to_s
puts "Harry's health after Ninja steal: " + harry.health.to_s 

# Ninja should have a get_away method, which when invoked, decreases its health by 15
puts "Ninja's health after get_away: " + nagato.get_away.health.to_s

# Samurai should have a default health of 200
puts "Samurai default health: " + shimazu.health.to_s

# Samurai should have method called death_blow, which when invoked, attacks a object and decreases its health to 0	
puts "Samurai death_blow, new health: " + shimazu.death_blow(harry).health.to_s
puts "Harry's health after Samurai death blow: " + harry.health.to_s 


# Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health	
puts "Samurai meditate, new health: " + shimazu.meditate.health.to_s


# Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are	 
shimazu.how_many  #includes the one in samurai.rb




