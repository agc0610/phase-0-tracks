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

# Release 0
# 1. Write a /contact route that displays an address
get '/contact/:building_number/:street_name/:city/:state/:zip' do
  building_number = "#{params[:building_number]}"
  street_name = "#{params[:street_name]}"
  city_state_zip = "#{params[:city]}, #{params[:state]}, #{params[:zip]}"
  "The address is #{building_number} #{street_name}, in #{city_state_zip}."
end

# 2. Write a /great_job route
get '/great_job' do
  "Great job, #{params[:person]}!"
end

# 3. Write a route that uses route parameters to add two numbers and respond with the result

get '/total/:num1/:num2' do
  total = params[:num1].to_i + params[:num2].to_i
  total = total.to_s
end

