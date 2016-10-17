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