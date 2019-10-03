require('pry')
require_relative("../models/students.rb")

# Student.delete_all()

student1 = Student.new({
  "first_name" => "Parry",
  "last_name" => "Hotter",
  "age" => 39,
  "house" => "Slytherin"
  })

student2 = Student.new({
  "first_name" => "Rom",
  "last_name" => "Tiddle",
  "age" => 14,
  "house" => "Hufflepuff"
  })

student3 = Student.new({
  "first_name" => "Volde",
  "last_name" => "Mort",
  "age" => 7,
  "house" => "Ravenclaw"
  })

student1.save()
student2.save()
student3.save()

binding.pry
nil
