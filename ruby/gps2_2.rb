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



#REFLECTION (note: my pair did not show up for this challenge, so I worked solo with my guide there)
# What did you learn about pseudocode from working on this challenge?
  #I learned more about getting comfortable with how detailed or high level my pseudocode should be. I struggled to not stray into coding itself before it was time, and this forced me to practice.
# What are the tradeoffs of using arrays and hashes for this challenge?
  #Arrays are more appropriate if you have only grocery items in your list. Since we also wanted to work with quantities, we had pairs of data which is a cue to use a hash and store that data in a key/value pair.
# What does a method return?
  #A method returns the calculated result of a series of operations on data that is passed into the method.
# What kind of things can you pass into methods as arguments?
  #Based on this lesson, I saw that you can pass in strings, integers, and whole hashes. I assume that one can also pass in an array.
# How can you pass information between methods?
  #In this lesson after I created a hash, I could pass it into the argument list that any other method took. I think depending on the situation, one might create a new variable like updated_grocery_list and then store the output of the current method there so it can be called later, but I'm not sure if that is superfluous and makes the code heavier.
# What concepts were solidified in this challenge, and what concepts are still confusing?
  #I feel much more comfortable identifying the pieces of a method and determining which things I can do with which class (hash versus array versus string) based on the documentation. I think I am still murky on how grocery_list is passed to the various subsequent methods, because I hard-coded the new grocery_list hash for each one to call, but when I tried running methods without this definition, it gave me errors about variable definitions not existing.