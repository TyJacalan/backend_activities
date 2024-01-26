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

Dog = Animal.new("Dog", "woof")
dog.speak

#Abstraction
class Student
    def initialize(name, exam_1, exam_2)
        @name = name
        @exam_1 = exam_1
        @exam_2 = exam_2
    end

    def calculate_grade
        compute_grade
    end

    private

    def compute_grade
        (exam_1 * 0.3) + (exam_2 * 0.7)
    end

end


##Polymorphism

#Inheritance

class Human
    def speak
        puts "...starts to speak."
    end
end

class Spanish
    def speak
        super
        puts "Hola!"
    end
end

class Filipino
    def speak
        super
        "Kamusta!"
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

