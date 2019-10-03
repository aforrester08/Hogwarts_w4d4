require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative("models/students")
also_reload("models/*")

#INDEX
get "/students" do
  @students = Student.all()
  erb(:index)
end

#NEW
get "/students/new" do
  erb( :new )
end

post "/students" do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end
