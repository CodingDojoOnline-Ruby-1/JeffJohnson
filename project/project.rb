class Project
  attr_accessor :name, :description, :team
  def initialize(name, description)
  	@name = name
  	@description = description
  	@team = []
  end	
  def elevator_pitch 
  	"#{@name}, #{@description}"
  end
  def add_to_team(*teamMember)
  	teamMember.each {|name| self.team.push(name)}
  	self
  end
end
# project1 = Project.new("Project 1", "Description 1")
# puts project1.name #prints out Project 1
# puts project1.elevator_pitch #prints out 'Project 1, Description 1"

# project1.add_to_team("Jeff", "Mark")
# puts project1.add_to_team("Ed").team