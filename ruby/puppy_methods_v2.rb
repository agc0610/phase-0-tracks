# class Puppy

#   def initialize
#     puts "Initializing new puppy instance..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(integer)
#     integer.times do
#       puts "Woof!"
#     end
#   end

#   def roll_over
#   puts "*rolls over*"
#   end

#   def dog_years(integer)
#   dog_age = integer * 7
#   puts dog_age
#   dog_age
#   end

#   def shake_paws
#     puts "*shakes paws*"
#   end

# end

# puppy = Puppy.new
# puppy.fetch("Ball")
# puppy.speak(3)
# puppy.roll_over
# puppy.dog_years(2)
# puppy.shake_paws

class Presidential_Candidate

  def initialize
    puts "Initializing new candidate..."
    @new_potus1 = "Voldemort"
    @new_potus2 = "HRC"
  end

  def give_speech(election_result)
    if election_result == true
      puts "*delivers a horrifying nightmare vision.*"
    else
      puts "*reminds us what a class act we just gave up.*"
    end
  end

  def receive_election_results(vote_tally)

    if vote_tally >= 270
      puts "Dear G-d our new president is #{@new_potus1}."
    else
      puts "Well democracy can live to see another day with #{@new_potus2}."
    end

  end

  def vote(borough)
    if borough == "Manhattan"
      puts "*#{@new_potus1} checks to see if spouse really voted correctly*"
    elsif borough == "Brooklyn"
      puts "*#{@new_potus2} votes like a normal person*"
    end
  end

end

president = Presidential_Candidate.new
president.give_speech(true)
president.receive_election_results(277)
president.vote("Manhattan")

clone_storage = []
50.times do
  clone = Presidential_Candidate.new
  clone_storage << clone
  p clone_storage
end

clone_storage.each do |clone|
  clone.give_speech(false)
  clone.receive_election_results(89)
  clone.vote("Brooklyn")
end
















