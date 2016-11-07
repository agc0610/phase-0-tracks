def switch_first_and_last_name(name)
  return name.split(" ").reverse.join(" ")
end

def spy_name(name)
  letter_bank = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  letter_bank_next = "ECDFIGHJOKLMNPUQRSTVAWXYZBecdfighjoklmnpuqrstvawxyzb"

  name = switch_first_and_last_name(name)
  for i in 0..name.length - 1
    if letter_bank.count(name[i]) > 0
      letter_index = letter_bank.index(name[i])
      name[i] = letter_bank_next[letter_index]
    end
  end
    return name
end

# p spy_name("Felicia Torres")  # Vussit Gimodoe

def print_names(name_bank)
  puts name_bank.length.to_s + " names converted: "
  name_bank.each do |name, new_name|
    puts "#{name} becomes #{new_name}"
  end
end

name_bank = {}

while true do
  puts "Please provide a name to turn into a spy name: "
  name = gets.chomp

  if name == "quit"
    print_names(name_bank)
    break
  end

  new_name = spy_name(name)

  puts new_name
  name_bank[name] = new_name


end