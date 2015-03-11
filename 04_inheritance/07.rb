class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    grade > student.grade
  end

  protected

    def grade
      @grade
    end
end

joe = Student.new("Joe", "A")
bob = Student.new("Bob", "B")

puts "Well done!" if bob.better_grade_than?(joe)
puts "Well done!" if joe.better_grade_than?(bob)
