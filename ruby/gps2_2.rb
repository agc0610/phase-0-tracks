# Method to create a list
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # steps:
    #define the creating list method
      #create an empty hash to store our grocery items and quantities
      #read the passed in string and pick out each item
    #results in an array, with each item a separate element
  #   use a loop that runs as many times as there are things in the array
  #   inside the loop
  #     turn each array item into a key in the hash
  #     set default quantity to any number so the hash will populate a value for the inputs
  #   print the list to the console [can you use one of your other methods here?] (Call the print a list method later)
  # output: hash with item => quantity

def create_a_list (item_list)
  grocery_list = {}
  items = item_list.split
  items.each {|item| grocery_list.store(item, 1)}
  p grocery_list
end

create_a_list("carrots apples cereal pizza")

# Method to add an item to a list
  # input: item name and optional quantity, grocery list
  # steps:
  #   read the input, which includes grocery list and item names and quantities
  #   store the item names in keys
  #   since quantity is optional,
  #     if quantity, add to the value spot of the hash item
  #     else assign a quantity of one
  # output: modified grocery list hash

def add_an_item(item, value, grocery_list)
  if value == ""
    grocery_list.store(item, 1)
  else
  grocery_list.store(item, value)
  end
  p grocery_list
end

grocery_list = {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1}
add_an_item("milk", "", grocery_list)


# Method to remove an item from the list
  # input: item name, grocery list
  # steps:
  #   find out if this item name is in the hash
  #   if it is, delete it
  #   else give feedback to the user that the item is not there
  # output: modified grocery list hash

def remove_item(item, grocery_list)
  item_exists = grocery_list.include?(item)
  if item_exists
    grocery_list.delete(item)
  else
    puts "Sorry, that item is not in the list."
   end
  p grocery_list
end

grocery_list = {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1, "milk"=>2}
remove_item("cheese", grocery_list)

# Method to update the quantity of an item
  # input: item name, quantity, grocery list
  # steps:
  #   find out what item to update quantity for
  #   try to locate it in the hash
  #     if it is in the hash
  #     access the item value
  #     change it to the new quantity
  #     if it is not in the hash, give user feedback that it is not there
  # output: modified grocery list hash

def update_quantity(item, value, grocery_list)
  item_exists = grocery_list.include?(item)
    if item_exists
      grocery_list["#{item}"] = "#{value}"
    else
      puts "Sorry, that item is not in the grocery list."
    end
  p grocery_list
end

grocery_list = {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1, "milk"=>2}
update_quantity("carrots", 3, grocery_list)

# Method to print a list and make it look pretty
  # input: grocery list
  # steps:
  #   write a puts statement with lines or something to delineate
  #   use a built-in method to separate each hash key/value pair one per line
  #     ->maybe iterate through the hash and do something with each key/value pair
  #   write a puts statement with more lines or something to delinate the end
  # output: the formatted grocery list

  def print_grocery_list(grocery_list)
    puts "Your grocery list"
    puts "_________________"
    grocery_list.each{|item, value| puts "#{item}: #{value}"}
    puts "_________________"
  end

grocery_list = {"carrots"=>3, "apples"=>1, "cereal"=>1, "pizza"=>1, "milk"=>2}
print_grocery_list(grocery_list)