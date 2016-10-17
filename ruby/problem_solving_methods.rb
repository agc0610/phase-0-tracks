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


#release 2: bubble sort
# Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.
    # define the method and parameter(s)
    # call method with an array of integers
    # look at the first and second items
    #   determine if they are in ascending order: if they are, leave them as is; if not swap them
    #   move to the third and fourth items: perform the same operation as 1 and 2
    #   repeat until the end of the array (n-1 because we are operating on items in pairs)
    # go back to the beginning and look at the first two again and repeat the indented lines until all integers in ascending order

# Implement the sorting method in Ruby.
# define the method and parameter(s)
def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    for i in 0..(arr.length - 2)
      if arr[i] > arr[i + 1]
        sorted = false
        arr[i], arr[i + 1] = arr[i+1], arr[i]
      end
    end
  end
  return arr
end

# call method with an array of integers
bubble_sort([40, 43, 12, 1, 2, 7])
