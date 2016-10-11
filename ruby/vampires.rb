
puts "How many employees will be processed?"
num_employees = gets.to_i
counter = 0

while counter < num_employees
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.to_i

  puts "What year were you born?"
  birth_year = gets.to_i

  puts "Do you eat garlic bread?"
  garlic_bread = gets.chomp

  puts "Do you need health insurance?"
  insurance = gets.chomp

  # until the user is done
  # we need to collect their input allergies, possibly storing them in an array
  puts "Please enter your allergies one at a time"
  allergies = []
  input = ""
  until input == "done"
    allergy = gets.chomp
    allergies << allergy
    puts "Please enter another allergy. Type 'done' when finished"
  end

  if allergies.include?("sunshine")
    puts "Probably a vampire"
    break
  end


# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

# what does "right age" mean? And other booleans
correct_age = (2016 - birth_year == age)
pro_garlic = (garlic_bread == "yes")
pro_insurance = (insurance == "yes")
vampire_name = (name == "Drake Cula" || "Tu Fang")

if correct_age && (pro_garlic || pro_insurance)
  puts "Probably not a vampire."

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
elsif !correct_age && (!pro_garlic || !pro_insurance)
  puts "Probably a vampire."

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
elsif !correct_age && !pro_garlic && !pro_insurance
  puts "Almost certainly a vampire."

# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
elsif vampire_name
  puts "Definitely a vampire."

# Otherwise, print “Results inconclusive.”
else
  puts "Results inconclusive."

end

counter += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
exit