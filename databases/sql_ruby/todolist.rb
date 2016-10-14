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
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list(
		id INTEGER PRIMARY KEY,
		item VARCHAR(255),
		complete BOOLEAN
	)
SQL

#create the table for the list
db.execute(create_table_cmd)

# function takes in the database variable and the item to add to the todolist.
# then it runs an execute command to insert the item into the database. complete flag = false
def write_item (db, item)
	db.execute("INSERT INTO list (item, complete) VALUES ( ? , 'false')", [item])
end

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

def mark(db, list_item)
	db.execute("UPDATE list SET complete = 'true' WHERE item = '#{list_item}'")
end

# DRIVER CODE
write_item(db,"Laundry")
# sqlite3 should add "Laundry" to list.db - pass
write_item(db,"Grocery Shopping")
write_item(db,"Carwash") 
#read_list(db)
# Should read the three items in the list - pass
mark(db, "Laundry")
read_list(db)
# should read the list and show that laundry is done