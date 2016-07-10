# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# /contact route that displays an address
get '/contact' do
  "123 S Main Street<br>
  Tulsa OK<br>
  74101"
end

# A /great_job route that can take a person's name as a query parameter (not a route parameter)
# and say "Good job, [person's name]!". 
# If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do
  name = params[:name]
  if name 
    "Good job, #{name}!"
  else
    "Good job!"
  end
end


# A route that uses route parameters to add two numbers and respond with the result. 
get '/add/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  sum = num1 + num2

  num1_s = num1.to_s
  num2_s = num2.to_s
  sum_s = sum.to_s

  "#{num1_s} + #{num2_s} = #{sum_s}"
end


# Make a route that allows the user to search the database in some way
# -- maybe for students who have a certain first name, or some other attribute.
# 

# get '/search/:campus' do
#   campus = params[:campus]
#   student_list = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
#   student = ""
#   student_list.each do |student|
#     student[:id] = "ID: #{student['id']}<br>"
#     student[:name] = "Name: #{student['name']}<br>"
#     student[:age] = "Age: #{student['age']}<br>"
#     student[:campus] = "Campus: #{student['campus']}<br><br>"
#   end
#   student.to_s
# end

