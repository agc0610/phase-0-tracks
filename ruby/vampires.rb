#release 1 interface to gather new employee data

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birthyear = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlicbread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

#release 2 conditionals to check for vampire status
def employeecheck (birth_year, garlic_bread, insurance)

case birth_year
  when 1900..2000 && (garlic_bread == true || insurance == true)
  puts "Probably not a vampire"

   when
   !1900..2000 && (garlic_bread == false || insurance == false)
   puts "Probably a vampire"

   when
   !1900..2000 && garlic_bread == false && insurance == false
   puts "Almost certainly a vampire"

   when
   name == "Drake Cula" || name == "Tu Fang"
   puts "Definitely a vampire"

   else
   puts "Results inconclusive"

   end
   return
end