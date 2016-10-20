Method to create a list
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps:
  define the creating list method
  create an empty hash to store our grocery items and quantities
  read the string and pick out each item
  results in an array, with each item a separate element
  use a loop that runs as many times as there are things in the array
  inside the loop
    turn each array item into a key in the hash
    set default quantity to any number so the hash will populate a value for the inputs
  print the list to the console [can you use one of your other methods here?] (Call the print a list method)
output: hash with item => quantity

Method to add an item to a list
input: item name and optional quantity, grocery list
steps:
  read the input, which includes grocery list and item names and quantities
  store the item names in keys
  since quantity is optional,
    if quantity, add to the value spot of the hash item
    else assign a quantity of one
output: modified grocery list hash

Method to remove an item from the list
input: item name, grocery list
steps:
  find out if this item name is in the hash
  if it is, delete it
  else give feedback to the user that the item is not there
output: modified grocery list hash

Method to update the quantity of an item
input: item name, quantity, grocery list
steps:
  find out what item to update quantity for
  try to locate it in the hash
    if it is in the hash
    access the item value
    change it to the new quantity
    if it is not in the hash, give user feedback that it is not there
output: modified grocery list hash

Method to print a list and make it look pretty
input: grocery list
steps:
  write a puts statement with lines or something to delineate
  use a built-in method to separate each hash key/value pair one per line
    ->maybe iterate through the hash and do something with each key/value pair
  write a puts statement with more lines or something to delinate the end
output: the formatted grocery list