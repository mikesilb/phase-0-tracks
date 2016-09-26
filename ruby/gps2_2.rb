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

#  p grocery
  grocery
end



# Method to add an item to a list
# input: item name and optional quantity
# steps: add a key/value pair to the hash
# output: updated hash but not shown on the screen

def add_an_item(grocery_hash,item_name, quantity=1)
  grocery_hash[item_name]= quantity
  grocery_hash
end



# Method to remove an item from the list
# input: grocery list, item that needs to be removed from the list
# steps: use built-in ruby method to delete the item from grocery list
# output: updated list, but not shown on screen

def delete_an_item (grocery_hash, item_name)
  grocery_hash.delete(item_name)
  grocery_hash
end


# Method to update the quantity of an item
# input: grocery list, item, new quantity
# steps: Override the quantity of input key, using 'grocery_list[item] = new_quanity'
# output: Updating the has with an altered quantity for the specified item

def quantity_change(grocery_hash, item_name, quantity)
  grocery_hash[item_name] = quantity
  grocery_hash
end



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
add_an_item(example2, "lemonade", 2)
add_an_item(example2, "tomatoes", 3)
add_an_item(example2, "onions")
add_an_item(example2, "ice cream", 4)

delete_an_item(example2, "lemonade")
quantity_change(example2, "ice cream", 1)
print_list(example2)

=begin
Reflection
------------

I learned from here that having good pseudocode (which for any given method could be subdivided into input, steps, and output headings) can really help clarify what we are aiming to accomplish here.  Having it be readable and step-by-step can really aid the process of pseudocoding, which will generate many benefits once the code needs to be implemented

To me, using a hash seemed more intuitive than using an array, since we had specific items (noted by the hash keys) as well as quantities (noted by the hash values).  To me, this felt like something that using a hash could accomplish effectively.  You could compensate for this by using a multidimensional array where the first array index would be the item and the second would be the quantity.  However, I still like the usage of a has better for this particular purpose.

A method returns the last line within it (unless you explicitly specify something different to return).  Also telling the method to print that last line is fundamentally different than having it return its value to the driver code, so they should be treated independently.

You can pass strings, variables, hashes, etc.  In other words, anything that is an object, you could theoretically pass into a method as an argument.  You also could specify a default value for any given argument (where even if no argument was explicitly stated, the value would be assigned as that particular default).  That was also interesting to determine via this exercise.

You cannot explicitly pass information from one method DIRECTLY to another method.  However, you could have some variable defined within the driver code that can be passed from one method and then outputted as some value.  Then the variable could be subsequently passed to a second method and outputted as some new value.  This process can be repeated for multiple methods.  But this is all done in the driver code.  It cannot be directly passed from method to method since each one is isolated from each other.

I feel like my understanding of methods and how driver code integrates with given methods got increased.  Also the difference between how a method is defined in isolation versus its implementation within the driver code.  I'm not sure if I gained confusion from this exercise, but I'm sure that there are many areas that need clarifying, above and beyond what I am currently aware of at this point.

=end
