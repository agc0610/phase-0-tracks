# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative tells the file where to import data from when it is kept in another file.
#require_relative speaks to a relative file path. Require also works, but then you have to give an absolute file path.
require_relative 'state_data'

class VirusPredictor
  #passes in the blueprint details for a new instance of an object
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #gets information from the predicted_deaths and speed_of_spread methods

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  #private methods can be called inside the class, but not outside. Can use it to prevent users on the outside from changing internal methods. Sets a boundary for what is internal use only and users shouldn't see in the interface wth other classes until you call it.
  private
  #this method calculates predicted deaths based on pop density conditionals and outputs results
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #this method calculates speed of spread of the virus, based on population density conditionals, and outputs results
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    #choice to use puts here is so that it appends to the print statement above, rather than start on a new line
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#iterate through the constant variable STATE_DATA

STATE_DATA.each do |state_name, population_info|
  current_instance = VirusPredictor.new(
    state_name,
    population_info[:population_density],
    population_info[:population]
    )
  current_instance.virus_effects
end

#=======================================================================
# Reflection Section

#The first hash uses the string and rocket to show the key value pair; the nested hash uses the symbol syntax. The symbol syntax is typically preferred because it runs slightly faster, but in this case since the first hash's key is also going to be a string output, it works to leave it that way.
#require_relative indicates that what is being called is a relative file path; the command knows the linking file is in the same directory. Using require on its own means you will need to indicate an absolute file path.
#Ways to iterate through a hash include .each_key and .each_value, but we talked about .each as being more efficient, and then passing in the key and value to the pipes.
#What stood out about the variables in refactoring virus_effects was that the class variables were passed in as arguments, which should not be necessary since they are defined on initialize. It was redundant code that could simply be deleted.
#I think the concept I most solidified was how classes are organized and interacted with, and I also gained a better sense of how to refactor/think about refactoring.