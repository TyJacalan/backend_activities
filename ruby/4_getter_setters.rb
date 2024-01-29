require 'rspec'

#Pt 1. Add getters and setters to the class
class Profile

  attr_accessor :full_name, :age, :address, :work
  
  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

#Pt 2. Create your own method with getters and setters
class Animal

  attr_accessor :species, :gender, :call

  def initialize(species, gender, call)
    @species = species
    @gender = gender
    @call = call
  end

  def make_walk
    puts "The #{species} is walking."
  end

  def make_run
    puts "The #{species} says #{call}! The #{species} is running."
  end
end

cow = Animal.new("cow", "female", "moo")
chicken = Animal.new("chicken", "male", "cluck")
dog = Animal.new("chicken", "prefer not to say", "woof")

puts dog.call
puts dog.gender
dog.gender = "male"
puts dog.gender
puts cow.make_run

#Test Part 1
describe 'Profile' do
  it 'has getters and setters' do
    my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

    expect(my_profile.full_name).to eq('Juan')

    my_profile.full_name = 'Juan Cruz'

    expect(my_profile.full_name).to eq('Juan Cruz')
    
    my_profile.age = 25
    my_profile.work = 'Software Engineer'

    expect(my_profile.age).to eq(25)
    expect(my_profile.work).to eq('Software Engineer')
  end
end
