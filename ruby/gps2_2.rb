# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # use .SPLIT to separate the string into an array, and then loop through
  # the array to set up the keys for a hash.
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(string)
	list = {}
	items_list = string.split(" ")
	items_list.each do |items|
		list[items.to_sym] = 1
	end
	list
end
# Driver code
grocery_list =  create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: hash, item name and optional quantity in a string separated by a space
# steps:
	# parse the string and the first element is the item and the second is quantity
	# add the element as a key to the hash and set quantity
# output: hash
def add_item(list, string)
	item_to_add = string.split(" ")
	list[item_to_add[0].to_sym] = item_to_add[1].to_i
	list
end

p add_item(grocery_list, "lemonade 2")
add_item(grocery_list, "tomatoes 3")
add_item(grocery_list, "onions 1")
add_item(grocery_list, "ice_cream 2")

# Method to remove an item from the list
# input: hash, item name as a string
# steps:
	# take the string and use delete(key)
	# return the list
# output: hash

def remove_item(list, string)
	list.delete(string.to_sym)
	list
end

p remove_item(grocery_list, "lemonade")

# Method to update the quantity of an item
# input: takes in the hash and then a string
# steps:
	# parse the string and use the first element of the array to pick the key
	# and then update the quantity
	# return the hash
# output: hash

def update_item(list, string)
	item_to_update = string.split(" ")
	list[item_to_update[0].to_sym] = item_to_update[1].to_i
	list
end

p update_item(grocery_list, "ice_cream 1")
# Method to print a list and make it look pretty
# input: take the hash list
# steps:
	# for EACH hash in the list print it's quanitity
# output: puts strings from the hash
def print_list(list)
	puts "This is what you need to buy:"
	puts "--------------------"
	list.each do |item, quantity|
		puts " #{item} : #{quantity}"
	end
	puts "--------------------"
end

print_list(grocery_list)




