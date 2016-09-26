# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # convert the item string to an array
  # iterate each item in the array will be assigned to key of the hash
  # set default quantity to nil
  # p the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash

def grocery_list(string_list)

  array_list=string_list.split

  grocery= {}

  array_list.each do |item|
  grocery[item] = nil
  end

  p grocery
  grocery
end

#example_list = grocery_list("carrots apples cereal pizza")
# grocery_list ("carrots apples cereal pizza")



# Method to add an item to a list
# input: item name and optional quantity
# steps: add a key/value pair to the hash
# output: updated hash but not shown on the screen

def add_an_item(grocery_hash,item_name, quantity=1)

 grocery_hash[item_name]= quantity
  grocery_hash
end
#p add_an_item(example_list, "bananas", 7)
#p add_an_item(example_list, "bread")



# Method to remove an item from the list
# input: grocery list, item that needs to be removed from the list
# steps: use built-in ruby method to delete the item from grocery list
# output: updated list, but not shown on screen

def delete_an_item (grocery_hash, item_name)

  grocery_hash.delete(item_name)
  grocery_hash
end

#p delete_an_item(example_list, "bread")


# Method to update the quantity of an item
# input: grocery list, item, new quantity
# steps: Override the quantity of input key, using 'grocery_list[item] = new_quanity'
# output: Updating the has with an altered quantity for the specified item

def quantity_change(grocery_hash, item_name, quantity)
  grocery_hash[item_name] = quantity
  grocery_hash
end

#p quantity_change(example_list,"bananas", 8)


# Method to print a list and make it look pretty
# input: The hash to print out
# steps: Iterate through the hash and puts the result of that iteration
# output: Displayed to the screen

def print_list(grocery_hash)
  grocery_hash.each do|item, quantity|
    puts item+": #{quantity}"
  end
end

#print_list(example_list)

example2 = grocery_list("milk butter toast jam cereal sugar")
p add_an_item(example2, "lemonade", 2)
p add_an_item(example2, "tomatoes", 3)
p add_an_item(example2, "onions")
p add_an_item(example2, "ice cream", 4)

p delete_an_item(example2, "lemonade")
p quantity_change(example2, "ice cream", 1)
print_list(example2)


