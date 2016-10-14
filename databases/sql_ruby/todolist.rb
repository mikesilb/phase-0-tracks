=begin
Ruby program that creates a persistent database to log my todolist. 

program will create a list.db with a 'todo' table. 

The program will allow the user to write items to the database. 
	delete items from the database
	view all items in the database
		and print it to terminal in a friendly way
	mark an item as done
	unmark a completed item
	remove all completed items from the table.
=end

# need to include sqlite3
require 'sqlite3'
# creates a database for the todolist
db = SQLite3::Database.new("list.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list(
		id INTEGER PRIMARY KEY,
		item VARCHAR(255),
		complete BOOLEAN
	)
SQL

#create the table for the list
db.execute(create_table_cmd)