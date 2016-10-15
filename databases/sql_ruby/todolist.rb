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
db = SQLite3::Database.new("lists.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list(
		id INTEGER PRIMARY KEY,
		item VARCHAR(255),
		complete BOOLEAN
	)
SQL

create_done_table = <<-SQL
	CREATE TABLE IF NOT EXISTS done_list(
		id INTEGER PRIMARY KEY,
		item VARCHAR(255),
		complete BOOLEAN
	)
SQL

#create the table for the list
db.execute(create_table_cmd)
db.execute(create_done_table)

# function takes in the database variable and the item to add to the todolist.
# then it runs an execute command to insert the item into the database. complete flag = false
def write_item (db, new_item)
	# trying to implement logic that prevents an already entered item from being entered 
#	todo = db.execute("SELECT * FROM list")
#	todo.each do |item|
#		if item['item'] == new_item
#			puts "You've entered this item before"
#		else
			db.execute("INSERT INTO list (item, complete) VALUES ( ? , 'false')", [new_item])
#		end
#	end
end

# function takes in db and prints all the items and says if they are complete or not
# loop through the hash and if complete = false print that it is incomplete
# if true print that it is complete else is there to catch bugs.
def read_list(db)
	todo = db.execute("SELECT * FROM list")
	todo.each do |item|
		if item['complete'] == 'false'
			puts "#{item['item']} is incomplete"
		elsif item['complete'] == 'true'
			puts "#{item['item']} is complete"
		else
			puts "Something is wrong"
		end
	end
end

# take in the list item to mark done, send query
def mark(db, list_item)
	db.execute("UPDATE list SET complete = 'true' WHERE item = '#{list_item}'")
end

# take in the list item to mark as incomplete send query
def unmark(db, list_item)
	db.execute("UPDATE list SET complete = 'false' WHERE item = '#{list_item}'")
end

# update_list method
# takes in the database
# deletes all marked items from list table and adds them to done_list table
def update_list(db)
	db.execute("INSERT INTO done_list (item, complete) SELECT list.item, list.complete FROM list WHERE complete = 'true'")
	db.execute("DELETE FROM list WHERE complete = 'true'")
end

# method takes in database and reads off all compelted items
def read_done(db)
	todo = db.execute("SELECT * FROM done_list")
		todo.each do |item|
			puts "#{item['item']} is complete"
		end
end

# DRIVER CODE
#write_item(db,"Laundry")
# sqlite3 should add "Laundry" to list.db - pass
#write_item(db,"Grocery Shopping")
#write_item(db,"Carwash") 
#read_list(db)
# Should read the three items in the list - pass
#mark(db, "Laundry")
#read_list(db)
# should read the list and show that laundry is done - pass
#unmark(db, "Laundry")
#read_list(db)
# should unmark laundry as complete - pass
#update_list(db)
#read_list(db)
# should remove laundry from list - pass
#read_done(db)
# should show laundry on the done_list - 
puts "Welcome to your todolist!"
puts "You can enter a new item with 'write', see your entire list with 'read', mark and item complete with 'mark', unmark a completed item with 'unmark', update your current todolist with 'update', or see your completed items with 'completed'. If you are finished type 'exit'."
