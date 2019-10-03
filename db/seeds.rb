require_relative("../models/hogwarts.rb")

# Student.delete_all()

student1 = Student.new({
  "first_name" => "Parry",
  "last_name" => "Hotter",
  "age" => 39,
  "house" => "Slytherin"
  })

student2 = Student.new({
  "first_name" => "Ron",
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
