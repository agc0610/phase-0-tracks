class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    print "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    print "Ho, ho, ho, Haaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    print "That was a good #{cookie_type}!"
  end

  def about
    puts "Santa 1 is #{@gender} and #{@ethnicity}, which is awesome! Santa is #{@age} years old."
  end

  #other setter methods
  def celebrate_birthday(age)
    @age = age + 1
  end

  def get_mad_at(reinder_name)
    #receive a reindeer_name
    #get its index position in the array
    #use that index position to insert it at the end; fixed array of length 7 b/c there are 8 reindeer
    #remove it from its current position
    #potential example/model from stack overflow: array.insert(2, array.delete_at(7))
  end

end

santa = Santa.new("female", "Hispanic")
santa.about
santa.gender = "cis-male"
santa.age
santa.celebrate_birthday(0)
santa.about

# santa = Santa.new("cis-male", "Russian")
# santa.about

# santa = Santa.new("gender queer", "Amazonian")
# santa.about

# santa_group = []
# santa_group << Santa.new("female", "Hispanic")
# santa_group << Santa.new("cis-male", "Russian")
# santa_group << Santa.new("gender queer", "Amazonian")

# p santa_group

#release 4
class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    print "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    # @reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
end

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


