require_relative 'project'

RSpec.describe Project do

  it 'has a getter and setter for name attribute' do
   
    project = Project.new("Project Name", "I am a project")
    project.name = "Changed Name"
    
    expect(project.name).to eq("Changed Name")
  end 

  it 'has a method elevator_pitch to explain name and description' do
   
    project1 = Project.new('Project 1', 'description 1')
    project2 = Project.new('Project 2', 'description 2')
    #if we call elevator_pitch method we should expect to get that project name and description back
    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project2.elevator_pitch).to eq("Project 2, description 2")
  end
  it 'has a method add_to_team to add team members to the project' do
    project3 = Project.new('Project 3', 'description 3')
    project3.add_to_team("Ed")
    expect(project3.team).to eq(["Ed"])
    project3.add_to_team("Jeff", "Mark")    
    expect(project3.team).to eq(["Ed","Jeff","Mark"])
  end
end