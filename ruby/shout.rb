# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + " aaaahhh!!" + " :)"
#   end

# Shout.self.yell_angrily("What is my life")
# Shout.self.yell_happily("I got it")

# end

module Shout
  def make_shouting_noise(words)
    puts "I can shout #{words} and it sounds exactly like who I am mimicking!"
  end

  def whisper(words)
    puts "I will whisper #{words} now instead."
  end
end

class Parrot
  include Shout
end

class Human
  include Shout
end

parrot = Parrot.new
parrot.make_shouting_noise("Oh my gosh I sound like a person")
parrot.whisper("I want to shout more")

human = Human.new
human.make_shouting_noise("Caw caw caw")
human.whisper("I'm still shouting")