class Student
  attr_accessor :name 
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student2)
    if grade > student2.grade
      puts "Well done!"
    end 
  end

  protected

  attr_reader :grade
end

first_student = Student.new("Joe", 90)
second_student = Student.new("Bob", 80)
p first_student.better_grade_than?(second_student)


