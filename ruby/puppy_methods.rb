class Puppy

  def initialize
    puts "initializing new Puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  #Add a speak method that takes an integer, and then prints "Woof!" that many times
  def speak(value)
    value.times do |woof|
      print "woof!", " "
    end
  end
  #We noticed that speak and roll_over instances print on the same line
  #When we run initialize, the initialize runs on the same line as speak. We are not sure why
  def roll_over
    puts "*rolls over*"
  end

  #Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
  def dog_years(value)
    dog_age = value * 7
    puts dog_age
  end

  def shake_paws
    puts "*shakes paws*"
  end

end

Puppy.new.fetch("ball")
Puppy.new.speak(3)
Puppy.new.roll_over
Puppy.new.dog_years(7)
Puppy.new.shake_paws