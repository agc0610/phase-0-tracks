# class Puppy

#   def initialize
#     puts "initializing new Puppy instance..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   #Add a speak method that takes an integer, and then prints "Woof!" that many times
#   def speak(value)
#     value.times do |woof|
#       print "woof!", " "
#     end
#   end
#   #We noticed that speak and roll_over instances print on the same line
#   #When we run initialize, the initialize runs on the same line as speak. We are not sure why
#   def roll_over
#     puts "*rolls over*"
#   end

#   #Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
#   def dog_years(value)
#     dog_age = value * 7
#     puts dog_age
#   end

#   def shake_paws
#     puts "*shakes paws*"
#   end

# end

# Puppy.new.fetch("ball")
# Puppy.new.speak(3)
# Puppy.new.roll_over
# Puppy.new.dog_years(7)
# Puppy.new.shake_paws


class Kitty
  def initialize
    puts "Initializing new kitty instance..."
  end

  def take_a_bath(string)
    if string == "wet"
      puts "*meows really loud*"
    elsif string == "dry"
      puts "*purrs in ignorant bliss*"
    else
      puts "*cat status: hiding effectively and sleeping*"
    end
  end

  def play_with_toy(toy)
    puts "I have stolen the #{toy} and you cannot have it back!"
    toy
  end

  def cat_happiness_rating(value)
    happiness_rating = value / 4
    puts "Your rating is #{happiness_rating} out of #{value}."
  end

end

#Kitty.new.take_a_bath("scree")
#Kitty.new.play_with_toy("potato")
#Kitty.new.cat_happiness_rating(20)

count = 0
finish = 49
kitties = []
while count <= finish do
  new_kitty = Kitty.new
  puts "new instance made!"
  kitties << new_kitty
  count +=1
end

p kitties

kitties.each {|new_kitty| new_kitty.take_a_bath("wet")}
kitties.each {|new_kitty| new_kitty.play_with_toy("potato")}
kitties.each{|new_kitty| new_kitty.cat_happiness_rating(48)}
