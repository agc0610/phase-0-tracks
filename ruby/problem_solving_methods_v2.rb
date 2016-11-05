# Working with Ethan F. and Jonah P.

# Release 0
int_arr = [1,2,3,4,5,6,7]

def search_array (arr, integer)
  arr.each do |position|
    if arr[position] == integer
      return position
    elsif arr[position] == (arr.length - 1)
      return nil
    end #if
  end #do
end #search_array

# p search_array(int_arr, 45)

# Release 1
def fib(fib_term)
    fib_array = [0,1]
    fib_term = fib_term - 2
    fib_term.times do |num|
        new_fibs = fib_array[-1] + fib_array[-2]
        fib_array << new_fibs
    end
    fib_array
end
p fib(100)
array = fib(100)
p array[99] == 218922995834555169026

#
# Release 2: bubble sort
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