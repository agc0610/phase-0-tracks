class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age, :reindeer_name

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @reindeer_name = reindeer_name
    @age = 0
  end

  def speak
    puts "Ho, ho, ho, Haaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday(age)
    @age = age + 1
  end

  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name)
      @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
      @reindeer_ranking << reindeer_name
    else
      puts "No naughty reindeer today!"
    end
    p @reindeer_ranking
  end

end

# Release 0 driver code
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")

# Release 1 driver code
# santa_group = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Amazonian", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# index = 0
# while index < example_ethnicities.length do
#   santa_group << Santa.new(example_genders[index], example_ethnicities[index])
#   index +=1
#   p santa_group
# end

# Release 2, 3 driver code
# santa = Santa.new("female", "Hispanic")
# p santa
# p santa.gender = "cis-male"
# p santa
# p santa.celebrate_birthday(53)
# santa.get_mad_at("Rudolph")

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

  random_gender = example_genders.sample
  random_ethnicity = example_ethnicities.sample
    santa = Santa.new(random_gender, random_ethnicity)

def get_random_age
  prng = Random.new
  random_age = prng.rand(140)
  return random_age
end
  santa.age = get_random_age()
  santas << santa

  p santas

