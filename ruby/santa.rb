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
    puts "Santa 1 is #{@gender} and #{@ethnicity}, which is awesome! Santa is #{@age} years old."
  end

  #getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end


  #setter method to allow gender to be reassigned from outside
  def gender=(new_gender)
    @gender = new_gender
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
    #potentially array.insert(2, array.delete_at(7))
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


