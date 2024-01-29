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