#release 0

  #Write a method that takes an array of integers and an integer to search for.
def search_array(arr, value)
  for i in 0..arr.length
    #The method should return the index of the item
    if arr[i] == value
      return i
    end
  end
  #nil if the integer is not present in the array
  return nil
end

arr = [42, 89, 23, 1]
#p search_array(arr, 1)
p search_array(arr, 42)

#release 1
def fibonacci(value)
  arr = [0, 1]
  count = 0
  while count < value - 2
    tmp = arr[count] + arr[count + 1]
    p tmp
    arr << tmp
    count += 1
  end
  return arr
end

p fibonacci(100)
