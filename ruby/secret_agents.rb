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

encrypt("zoo")

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

decrypt("app")



