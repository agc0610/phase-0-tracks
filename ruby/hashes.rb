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

  puts "Please review your answers. If you need to make a change, type the name of the field to change. If not, type 'none'."
    make_change = gets.chomp.to_sym

#       If the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key.
    if
      make_change != :none
      puts "What is the change to make?"
      update = gets.chomp
      client_details[make_change] = update

#      If the designer says "none", skip it

      unless
      make_change == :none
      end
  end

  #   Print the latest version of the hash, and exit the program.
  p client_details
