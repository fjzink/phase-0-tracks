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

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# number of students at each campus
get '/campuses' do
	@san_francisco = db.execute("SELECT * FROM students WHERE campus=?", ['SF'])
	@san_diego = db.execute("SELECT * FROM students WHERE campus=?", ['SD'])
	@seattle = db.execute("SELECT * FROM students WHERE campus=?", ['SEA'])
	@chicago = db.execute("SELECT * FROM students WHERE campus=?", ['CHI'])
	@new_york = db.execute("SELECT * FROM students WHERE campus=?", ['NYC'])
	erb :campuses
end