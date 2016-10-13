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


unicorn_mane_colors = {
  "Moonshine" => "blue sparkle",
  "Sprinkles" => "neon green",
  "Buttercup" => "yellow",
  "Joe" => "very black"
 }

  unicorn_mane_colors.each {|name, color| puts "#{name} has a #{color} mane"}

