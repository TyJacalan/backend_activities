#Encapsulation

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

#Abstraction
class Student
    def initialize(name, grades)
      @name = name
      @grades = grades
    end
  
    def calculate_total_grade
      compute_math + compute_eng
    end
  
    private
  
    def compute_math()
        compute_weighted_average(@grades[:math], 0.3)
    end
  
    def compute_eng()
        compute_weighted_average(@grades[:eng], 0.7)
    end

    private

    def compute_weighted_average(subject_scores, weight)
        total_subject = subject_scores.reduce(:+).to_f
        average_subject = total_subject / subject_scores.length
        average_subject * weight
      end
  end

  juan = Student.new("Juan", {:math => [90, 95], :eng => [90, 85,78]})
  puts juan.calculate_grade


##Polymorphism

#Inheritance

class Human
    def speak
        puts "...starts to speak."
    end

    def breathe
        puts "...is breathing."
    end
end

class Adult
    def speak
        super
        puts "Hello!"
    end

    def run
        puts "Starts to run..."
    end
end

class Baby
    def speak
        super
        "Babada!"
    end
end

#Duck Typing

class Luffy
    def basic_move
      puts 'Gomu Gomu no Pistol!'
    end
  end
  
  class Zoro
    def basic_move
      puts 'Yaki Oni Giri!'
    end
  end

  def make_basic_move(character)
    character.basic_move
  end

  luffy = Luffy.new
  zoro = Zoro.new
  
  make_basic_move(luffy)
  make_basic_move(zoro)

