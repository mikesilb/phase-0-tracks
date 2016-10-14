# THIS APP WILL ALLOW THE USER TO RATE AND COMMENT ON HOW HE/SHE IS FEELING IN VARIOUS AREAS OF LIFE.  THIS IS A WELLNESS TOOL


# require gems
require 'sqlite3'


# create SQLite3 database
db = SQLite3::Database.new("how_am_I_feeling.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_individuals_table_cmd = <<-TABLE1_SQL
  CREATE TABLE IF NOT EXISTS individuals(
    id INTEGER PRIMARY KEY,
    fullname VARCHAR(255),
    FOREIGN KEY (fullname) REFERENCES feedback(name)
  )
TABLE1_SQL

create_feedback_table_cmd = <<-TABLE2_SQL
  CREATE TABLE IF NOT EXISTS feedback(
    name VARCHAR(255) PRIMARY KEY,
    time DATE
  )
TABLE2_SQL

# create an individual list table (if it's not there already)
db.execute(create_individuals_table_cmd)

# create a feedback table which will contain all ratings and comments (if it's not there already)
db.execute(create_individuals_table_cmd)


# add a test item to schedule
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

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

