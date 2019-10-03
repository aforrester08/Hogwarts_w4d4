require_relative("../db/sql_runner.rb")

class Student

  attr_reader :first_name, :last_name, :age, :house

  def initialize( options )
    @id = options['id'].to_i()
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age']
    @house = options['house']
  end


  def save()
    sql = "INSERT INTO hogwarts
    (first_name, last_name, age, house)
    VALUES
    ($1, $2, $3, $4)
    RETURNING *"
    values = [@first_name, @last_name, @age, @house]
    student_data = SqlRunner.run(sql, values)
    @id = student_date[0]['id'].to_i()
  end

end
