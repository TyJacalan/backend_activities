class Animal
    def initialize(species, call)
        @species = species
        @call = call
    end

    def speak
        puts "The #{@specieis} says #{@call}"
    end
end

dog = Animal.new("Dog", "woof")
dog.speak