// Release 0
get the array
separate it into individual string items
assign variables for the items to work within a loop
store the string lengths as integers in these variables
set a new array
store these variables in a new array
use a sorting algorithm to order them from lowest to highest (bubble?)
return the last one (pop or splice?), which is the longest

In Ruby array.index(string) can be used to identify an index position with that string; also true in JS?



// Release 1
get the first and second object
is there something similar to Ruby .empty? to check for something present at an intersection? Can this work for objects as well as arrays?
Use that behavior to check if there is a key/value pair in common
else (letter_array & consonant_bank).empty? == false
      p letter_array & consonant_bank


// Release 2
get an integer (passed in as an argument)
set up an empty array to store upcoming strings
set up a letter bank array to use to construct the random words
use Math.random to generate the varying length?




