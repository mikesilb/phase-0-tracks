# THIS APP WILL ALLOW THE USER TO RATE AND COMMENT ON HOW HE/SHE IS FEELING IN VARIOUS AREAS OF LIFE.  THIS IS A WELLNESS TOOL

# require gems
require 'sqlite3'


# create SQLite3 database
db = SQLite3::Database.new("how_am_I_feeling.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_feedback_table_cmd = <<-TABLE1_SQL
  CREATE TABLE IF NOT EXISTS feedback (
    id INTEGER PRIMARY KEY,
    fullname VARCHAR(255),
    time DATE,
    relationship_rate INT,
    relationship_comment VARCHAR(255),
    health_rate INT,
    health_comment VARCHAR(255),
    spiritual_rate INT,
    spiritual_comment VARCHAR(255),
    leisure_rate INT,
    leisure_comment VARCHAR(255)
  )
TABLE1_SQL




# create a feedback table which will contain all ratings and comments (if it's not there already)
db.execute(create_feedback_table_cmd)





puts "What is your full name?"
fullname_in = gets.chomp
=begin
#puts "From a 1-10, how would you rate the quality of your relationships?"
#puts "Would you like to elaborate about relationship stuff?"
#puts "From a 1-10, how would you rate your health?"
#puts "Would you like to elaborate about your health?"
=end


time = Time.now

db.execute("INSERT INTO feedback (fullname, time) VALUES ('#{fullname_in}', '#{time}')")

=begin
# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion
#def create_kitten(db, name, age)
#  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
#end

#10000.times do
#  create_kitten(db, Faker::Name.name, 0)
#end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end
=end

