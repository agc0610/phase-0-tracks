puts "Welcome to the spy name generator!"

def spy_name(name, name_store)
# pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

# Swap the first and last name.
  step_one = name.split(" ").reverse.join(" ")

#separate the new string into an array of letters
  step_two = step_one.split("")

#cycle through the array of letters
#doing alias method--will go back and try again to do vowels and consonants later
  #change each letter to the next one in the alphabet
  step_three = step_two.map { |letter| letter.next }

  #shuffle the letters
  step_four = step_three.shuffle!

  #take the first five letters
  step_five = step_four.take(5)

  #sort those 5 letters and put them back into one string
  step_six = step_five.sort.join

  #pronouncing the result is half the mystery...
  puts "Your spy name is #{step_six}"

  name_store[name] = step_six
end

#repeatedly gets a name to work with and sends to the method to operate on
def get_name
  puts "What is your name? Type quit to finish"
  name = gets.chomp
  return name
end

def play
  name_store = {}
  name = get_name
  until name == "quit" do
    spy_name(name, name_store)
    name = get_name
  end
  p name_store
end

play










