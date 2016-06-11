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


