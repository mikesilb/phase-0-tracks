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
    career_rate INT,
    career_comment VARCHAR(255),
    finance_rate INT,
    finance_comment VARCHAR(255),
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





puts "1. What is your full name?"
fullname_in = gets.chomp

puts "2. From a 1-10, how would you rate the quality of your relationships?"
relationship_rate_in = gets.chomp
puts "3. Would you like to elaborate about relationship stuff?"
relationship_comment_in = gets.chomp
puts "4. From a 1-10, how would you rate the way that your career is headed?"
career_rate_in = gets.chomp
puts "5. Would you like to elaborate about how your career is doing?"
career_comment_in = gets.chomp
puts "6. From a 1-10, how would you rate how well you are doing financially?"
finance_rate_in = gets.chomp
puts "7. Would you like to elaborate (about how you are doing financially)?"
finance_comment_in = gets.chomp
puts "8. From a 1-10, how would you rate your health?"
health_rate_in = gets.chomp
puts "9. Would you like to elaborate (about your health)?"
health_comment_in = gets.chomp
puts "10. From a 1-10, how would you rate the quality of your leisure hobbies and pursuits?"
leisure_rate_in = gets.chomp
puts "11. Would you like to elaborate about any aspect of your leisure activities?"
leisure_comment_in = gets.chomp
puts "12. From a 1-10, how would you rate the quality of your spiritual activities"
spiritual_rate_in = gets.chomp
puts "13. Would you like to elaborate about any aspect of your spirituality?"
spiritual_comment_in = gets.chomp




time = Time.now

db.execute("INSERT INTO feedback (fullname, time, relationship_rate, relationship_comment, career_rate, career_comment, finance_rate, finance_comment, health_rate, health_comment, leisure_rate, leisure_comment, spiritual_rate, spiritual_comment) VALUES ('#{fullname_in}', '#{time}', '#{relationship_rate_in}', '#{relationship_comment_in}', '#{career_rate_in}', '#{career_comment_in}', '#{finance_rate_in}', '#{finance_comment_in}','#{health_rate_in}', '#{health_comment_in}','#{leisure_rate_in}', '#{leisure_comment_in}', '#{spiritual_rate_in}', '#{spiritual_comment_in}' )")

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
=end


# explore ORM by retrieving data
 feedback_out = db.execute("SELECT fullname, time, relationship_rate, career_rate, finance_rate, health_rate, spiritual_rate, leisure_rate FROM feedback")


 feedback_out.each do |category, rate_comment|
  puts "#{category}, #{rate_comment} "
 end



