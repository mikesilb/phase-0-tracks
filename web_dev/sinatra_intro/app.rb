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

get '/great_job/' do
  name1 = params[:name1]
  if name1
    "Good job, #{name1}"
  else
    "Good job!"
  end
end

get '/contact/:street_number/:city_state_zip' do
  street_number = params[:street_number]
  city_state_zip = params[:city_state_zip]
  "#{street_number}<br>\n#{city_state_zip}<br><br>"
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/adding/:number_1/:number_2' do
  number_1 = params[:number_1].to_i
  number_2 = params[:number_2].to_i
  number_3 = number_1 + number_2
  "The answer is #{number_3}."
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

=begin
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
=end



get '/students/:age' do
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])[0]
  student.to_s
end

=begin
RELEASE 1 NOTES:

1. The website, https://www.ruby-toolbox.com/categories/web_app_frameworks contains a large list of Ruby based web app libraries.

2. It appears as if many different databases can be connected to Sinatra.  Some of which include sqlite3, postgreSQL, ActiveRecord, DataMapper, and other such databases.

3. A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server. (http://whatis.techtarget.com/definition/Web-stack)



=end
