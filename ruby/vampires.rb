# user input variables
name = ""
age = 0
birthyear = 0
garlicbread = true
insurance = true

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


agecorrect = age corresponds to birthyear
agecorrect = true

if agecorrect && garlicbread && insurance
  puts "Probably not a vampire."


if !agecorrect && !garlicbread || !insurance
  puts "Probably a vampire."

if !agecorrect && !garlicbread && !insurance
  puts "Almost certainly a vampire."





