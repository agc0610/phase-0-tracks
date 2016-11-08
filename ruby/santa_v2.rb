class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho, Haaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

end

# Release 0
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")

# Release 1
santa_group = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Amazonian", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
index = 0
while index < example_ethnicities.length do
  santa_group << Santa.new(example_genders[index], example_ethnicities[index])
  index +=1
  p santa_group
end