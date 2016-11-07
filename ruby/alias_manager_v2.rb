def switch_first_and_last_name(name)
  return name.split(" ").reverse.join(" ")
end

def spy_name(name)
  # letter_bank = "AEIOUABCDFGHJKLMNPQRSTVWXYZBaeiouabcdfghjklmnpqrstvwxyzb"
  letter_bank = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  letter_bank_next = "ECDFIGHJOKLMNPUQRSTVAWXYZBecdfighjoklmnpuqrstvawxyzb"

  name = switch_first_and_last_name(name)
  for i in 0..name.length - 1
    if letter_bank.count(name[i]) > 0
      letter_index = letter_bank.index(name[i])
      # name[i] = letter_bank[letter_index + 1]
      name[i] = letter_bank_next[letter_index]
    end
    end
    return name
end

p spy_name("Felicia Torres")  # Vussit Gimodoe