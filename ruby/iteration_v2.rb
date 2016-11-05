#worked with Noelle; she submitted. Copying for my own reference.

# puts  "What do you know about state capitols? nothing!"
# def capitolator
#   puts "Lets learn some state capitols!"
#   capitol1 = "Sacramento"
#   capitol2 = "Tallahassee"
#   yield(capitol1, capitol2)
# end

# capitolator { |capitol1, capitol2| puts "The capitol of California is #{capitol1}.
# The capitol of Florida is #{capitol2}" }

# puts "Now we learned the capitols of the two most important states of the union! (election years only)"

# capitols = ["Sacramento", "Tallahassee", "St. Paul", "Annapolis"]

# state_pairs = {
#   "Sacramento" => "California",
#   "Tallahassee" => "Florida",
#   "St. Paul" => "Minnesota",
#   "Annapolis" => "Maryland"
# }

# puts capitols

# capitols.each {|capitol| puts capitol.upcase }

# capitols.map! {|capitol| puts capitol + "!"}

# puts state_pairs

# state_pairs.each {|city, state| puts city.reverse.upcase, state.reverse.upcase}

# arr = ["dogs", "cats", "parrots"]

# hash_new = {

#   :pet1 => "dogs",
#   :pet2 => "cats",
#   :pet3 => "parrots"
# }

# Number 1
# arr.delete_if {|animal| animal == "dogs" }
#   puts arr

# hash_new.delete_if{|type, species| species == "cats"}
# puts hash_new

# Number 2

# arr.keep_if {|animal| animal =~ /[p]/}
# puts arr

# hash_new.keep_if {|type, species| species =~ /[g]/}
# puts hash_new

#Number 3


# arr.select! {|animal| animal =~ /[c]/}
# puts arr

# hash_new.select! {|type, species| species =~ /[o]/}
# puts hash_new

#number 4

arr1 = [2, 4, 6, 8]

puts arr1.drop_while {|i| i < 6 }

