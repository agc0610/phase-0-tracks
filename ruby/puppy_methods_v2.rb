class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times do
      puts "Woof!"
    end
  end

  def roll_over
  puts "*rolls over*"
  end

  def dog_years(integer)
  dog_age = integer * 7
  puts dog_age
  dog_age
  end

  def shake_paws
    puts "*shakes paws*"
  end

end

puppy = Puppy.new
puppy.fetch("Ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(2)
puppy.shake_paws