# initiate an empty hash

client_details = {}

#   Prompt the designer/user for all of this information.
#   Convert any user input to the appropriate data type.

  puts "What is your full name?"
    client_details[:name] = gets.chomp
  puts "What is your age?"
    client_details[:age] = gets.to_i
  puts "What city do you live in?"
    client_details[:city] = gets.chomp
  puts "What state? (Sometimes different states have the same city!)"
    client_details[:state] = gets.chomp
  puts "Do you need childproofing? Y/N"
    client_details[:needs_childproofing] = gets.chomp
  puts "How many children do you have?"
    client_details[:children] = gets.to_i
  puts "What decor theme do you prefer?"
  client_details[:decor_theme] = gets.chomp
  puts "Do you like your decor to match closely? Y/N"
    client_details[:matching] = gets.chomp
  puts "Do you like primary colors? Y/N"
    client_details[:primary_colors] = gets.chomp
  puts "What is your budget?"
    client_details[:budget] = gets.to_i

#   Print the hash back out to the screen when the designer has answered all of the questions.

p client_details


#   Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes!
NEED TO OPEN UP TO USER INPUT INSTEAD OF EXITING OUT. DOES SIMPLY HAVING MORE CODE STOP THIS?

  puts "Any changes to make to the client's answers?"
    get designers answer
    store in variable to call in if/else loop

      if the designer says "none"
        >>skip it
      elsif the designer enters "decor_theme" (or some other key),
        >>your program should ask for a new value and update the :decor_theme key.


#       (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.

#   Print the latest version of the hash, and exit the program.

