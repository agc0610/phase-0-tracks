# copy of pair work with Dharini M. 12/1/16
# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/details/youth' do
  @students = db.execute("SELECT * FROM students where age>(?)",[20])
  erb :details
end
get '/students/campus' do
  @campus_creation = db.execute("CREATE TABLE IF NOT EXISTS campuses(id INTEGER PRIMARY KEY, campus_name varchar(255))")
  erb :campus
end

post '/campus' do
  db.execute("INSERT INTO campuses (campus_name) VALUES (?)",[params['campus_name']])
  campus_list = db.execute("select * from campuses")
  campus_list.to_s
end
# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources