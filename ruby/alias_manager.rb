puts "Welcome to the spy name generator! What is your name?"
name = gets.chomp


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

  puts "Your agent name is #{step_six}"
