# def rainbow_unicorn
#   puts "No unicorns yet"
#   name1 = "Moonshine"
#   name2 = "Sprinkles"
#   yield(name1, name2)
#   puts "Now we have some unicorns! Yay!"
# end

# rainbow_unicorn {|name1, name2| puts "Here come #{name1} and #{name2}"}


 unicorns = ["Moonshine", "Sprinkles", "Buttercup", "Joe"]
   puts unicorns
   unicorns.each{|show| puts "#{show} is a unicorn!"}
   puts unicorns

   unicorns.map! do |unicorn|
     unicorn.next
   end
   puts unicorns

#release 2 examples of specificity
   # unicorns.delete_if{|unicorn| unicorn == "Buttercup"}
   # unicorns.keep_if{|unicorn| unicorn == "Moonshine"}
   # unicorns.select!{|unicorn| unicorn == "Joe"}
   unicorns.reject!{|unicorn| unicorn["Sprinkles"]}

unicorn_mane_colors = {
  "Moonshine" => "blue sparkle",
  "Sprinkles" => "neon green",
  "Buttercup" => "yellow",
  "Joe" => "very black"
 }

  unicorn_mane_colors.each {|name, color| puts "#{name} has a #{color} mane"}

#release 2 examples of specificity
  # unicorn_mane_colors.delete_if {|name, color| name == "Joe" || color == "neon green"}
  # unicorn_mane_colors.keep_if{|name, color| name == "Joe" && color == "very black"}
  # unicorn_mane_colors.select!{|name, color| name == "Moonshine" || color == "yellow"}
  unicorn_mane_colors.reject!{|name, color| color == "neon green" || color == "blue sparkle"  }