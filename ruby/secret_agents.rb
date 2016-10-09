letterbank = "abcdefghijklmnopqrstuvwxyz"
index = 0

def encrypt (string)
  letterbank = "abcdefghijklmnopqrstuvwxyz"
  index = 0
    while index < string.length do
      if
        string[index] == " "
        string[index] = " "
        puts string[index]
      elsif
        string[index] == "z"
        string[index] = "a"
        puts string[index]
      else
        string[index] = letterbank[letterbank.index(string[index])+1]
        puts string[index]
      end

      index +=1

  end
end

def decrypt (string)
  letterbank = "abcdefghijklmnopqrstuvwxyz"
  index = 0
    while index < string.length do
      if
        string[index] == " "
        string[index] = " "
        puts string[index]
      elsif
        string[index] == "z"
        string[index] = "y"
        puts string[index]
      else
        string[index] = letterbank[letterbank.index(string[index])-1]
        puts string[index]
      end

      index +=1

  end
end

puts "Would you like to encrypt or decrypt a password?"
 answer = gets.chomp

 if answer == "encrypt"
  puts "Please provide your password."
  encrypt(gets.chomp)

 else answer == "decrypt"
  puts "Please provide your password."
  decrypt(gets.chomp)

 end



#decrypt(encrypt("swordfish"))
#Release 4: Status update on 10/8 is that we noticed when we run our code, even though it is successful it always ends with a nil line. This nested method is currently breaking because it takes the nil as part of the string for decrypt, and runs it against .length, which is impossible. We are not sure why nil shows up. We briefly discussed chomping off nil, but we probably should just figure out how to not have nil in the first place.




