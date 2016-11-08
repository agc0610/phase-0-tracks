# Worked with Ben, Neal guided

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create an empty hash
  # Separate each item from the string
  # Iterate through the list
  # Turn each item into a key
  # set default quantity to be each value
  # print the list to the console [can you use one of your other methods here?]
# output: list

# Method to add an item to a list
# input: List, item name and optional quantity
# steps:
  #Read the input
  #Store the item names in keys
  #IF there is a quantity included then assign that quantity. If not, assign a default quantity.
# output: Edited list

# Method to remove an item from the list
# input: List, item name
# steps:
  #Check if item is in list
  #IF item is in list, delete item
  #IF not, tell the user item isn't in list
# output: Edited list

# Method to update the quantity of an item
# input: List, item name and quantity
# steps:
  # Get item name.
  # Check if item is in list.
  # IF item is in list, then access value and change it.
  # IF item is not in list, tell user item is not in list.
# output: Edited list.

# Method to print a list and make it look pretty
# input: List
# steps:
  #Print the list
# output: Formatted list

def create_grocery_list(list, item_list)
  items = item_list.split
  items.each do |item|
    list.store(item, 1)
  end
  return list
  print_list(grocery_list)
end

def add_grocery_item(list, item_name, quantity)
  if quantity == " "
    list.store(item_name, 1)
  else
    list.store(item_name, quantity)
  end
  return list
end


def remove_grocery_item(list, item_name)
  exist = list.include?(item_name)
  if exist
    list.delete(item_name)
  else
    puts "That item isn't on your list."
  end
  return list
end

def update_quantity(list, item_name, quantity)
  exist = list.include?(item_name)
  if exist
    list["#{item_name}"] = "#{quantity}"
  else
    puts "That item isn't on your list. Cannot update."
  end
  return list
end


def print_list(list)
  puts "Your grocery list: "
  puts "-------------------"
  list.each {|item_name, quantity| puts "#{item_name} : #{quantity}"}
end



grocery_list = {}
item_list = "carrots apples cereal pizza"
create_grocery_list(grocery_list, item_list)
# add_grocery_item(grocery_list, "cereal", 2)
# remove_grocery_item(grocery_list, "carrots")
# update_quantity(grocery_list, "apples", 100)
# puts print_list(grocery_list)

add_grocery_item(grocery_list, "lemonade", 2)
add_grocery_item(grocery_list, "tomatoes", 3)
add_grocery_item(grocery_list, "onions", 1)
add_grocery_item(grocery_list, "ice cream", 4)

remove_grocery_item(grocery_list, "lemonade")
update_quantity(grocery_list, "ice cream", 1)
print_list(grocery_list)


# Release 4: Reflection
# What did you learn about pseudocode from working on this challenge?
  # Working with a partner this time around, I was forced to consider how someone else thinks about pseudocode, and it was fantastic. What I wanted the first time around. We spent a little time stumbling over semantics, but it was helpful to practice figuring out the balance of English versus programming with a partner.

# What are the tradeoffs of using arrays and hashes for this challenge?
  # Hashes store labeled data, which we had when we assigned quantities to the grocery items. Arrays are more appropriate when you only have one type of data in a list, like we did in the first method where we only received grocery items (not quantities).

# What does a method return?
  # A method returns the result of whatever calculations/operations were defined in the method, based on the variables passed in.

# What kind of things can you pass into methods as arguments?
  # You can pass in strings, integers, whole hashes, and arrays. The lesson says you can pass in other methods, but I don't think we quite did that. I'm still not clear why that isn't nesting methods (which StackOverflow folks are adamant cannot be done in Ruby).

# How can you pass information between methods?
  # I feel much clearer on this after this second go. We defined the variable, the hash, that we wanted to use in all the methods outside of the methods, and then passed it in each time as an argument. I was also more careful to use explicit return instead of puts (just displays and forgets) or p (for debugging). Explicitly returning a value means it's available to pick up for use in another method. It's obviously easier with OOP/classes, but we aren't supposed to do that yet...

# What concepts were solidified in this challenge, and what concepts are still confusing?
  # The concept of making a reused/modified variable more global in scope (or just not local to one method) and then calling it in and returning an update is more solidified now. I also feel more literate writing loops with hashes versus arrays, and what you can do with each of them. I feel good about this second pass at the assignment.