# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # have an empty list (hash)
  # set default quantity
  # take item from user and put it in list
  # take quantity for item from user and assign to item
  # print the list to the console [can you use one of your other methods here?]
# output: the list filled in with what's passed in for items and quantity

# Method to add an item to a list
# input: item name and optional quantity
# steps: take the item name and add into list along with quantity
# output: the item and it's quant

# Method to remove an item from the list
# input: an item
# steps: take item from user
#        remove item from list
# output: new hash without item/quantity

# Method to update the quantity of an item
# input: key and new value
# steps: takes in key
#        takes in new value
#        updates the value for that key
# output: updated value of key

# Method to print a list and make it look pretty
# input: completed list 
# steps: goes through each key and value and prints pretty
# output: printed pretty list


def new_list(items)
  list = {}
  items_array = items.split(' ')
  p items_array
  items_array.each do |item|
    list[item] = 1
  end
  print_nice(list)
end

def new_item(list, item)
  if list.include?(item)
    list[item] += 1
  else
    list[item] = 1
  end
  print_nice(list)  
end

def delete_item(list, item)
  if list.include?(item)
    list.delete(item)
  else
    puts "item not in list"
  end
  print_nice(list)
end

def update_quant(list, item, quantity)
  list[item] = quantity
  print_nice(list)
end

def print_nice(list)
  list.each do |item, quantity|
    puts "We have #{quantity} #{item}" 
  end
end
 
list = new_list("carrots apples cereal pizza")
# {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1} 

new_item(list, "potatoes")
delete_item(list, "potatoes")
update_quant(list, "apples", 5)
print_nice(list)

# Release 5 --------Commented Reflection---------
# What did you learn about pseudocode from working on this challenge?
# - I need to start thinking more about what's going in and what's coming out of methods

# What are the tradeoffs of using arrays and hashes for this challenge?
# -The array didn't seem like an appropriate choice for this challenge because each item needed to be assigned a corresponding value

# What does a method return?
# - will return a value, whether it's a string, integer, array, hash, or a result of being called on another method

# What kind of things can you pass into methods as arguments?
# - You can pass in strings, integers, arrays, hashes and other methods as arguments

# How can you pass information between methods?
# -If the second method is defined globally, you can simply call the second method within your method

# What concepts were solidified in this challenge, and what concepts are still confusing?
# - solidified: accessing/editing data within arrays/hashes 
# - solidified: passing in arrays/hashes as arguments
# - solidified: knowing how many arguments to pass into a method
# - still confusing: calling methods within a method (hard to understand when it's a good choice)