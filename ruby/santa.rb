class Santa
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
    puts "Santa 1 is #{@gender} and #{@ethnicity}, which is awesome!"
  end

end

# santa = Santa.new("female", "Hispanic")
# # santa.speak
# # santa.eat_milk_and_cookies("chocolate chip")
# santa.about

# santa = Santa.new("cis-male", "Russian")
# santa.about

# santa = Santa.new("gender queer", "Amazonian")
# santa.about

santa_group = []
santa_group << Santa.new("female", "Hispanic")
santa_group << Santa.new("cis-male", "Russian")
santa_group << Santa.new("gender queer", "Amazonian")

p santa_group


