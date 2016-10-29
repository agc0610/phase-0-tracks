// Release 0
// in the driver code get the array
// pass that into the function call
// go through each item in the array (for loop so it stops at end of array?)
// if for loop what do we need
// set up a variable for default string length of 0
// introduce an empty variable to store the return value we are looking for
// the first time through the loop, compare the array item to the default string length (0)
// if the current array item is greater than 0, reassign the string length variable to that length
// in the next time through the loop, the current array item is compared to the previous item's length
// if it is longer, the process repeats because it is greater than the new value (if it is shorter, no reassigning happens and it continues)
// the last value to cause an update at the end of the loop is the longest

function longestString() {
  var strlength = 0;
  var longest = "";
  for(var i=0; i < arr.length; i++){
      if(arr[i].length > strlength){
          var strlength = arr[i].length;
          longest = arr[i];
      }
  }
  console.log(longest);
}

// var arr = ['robots make noises', 'robots', 'they make beep boop noises all day'];
var arr = ['hello', 'what is for dinner', 'I want to eat right this minute']
longestString(arr);


// Release 1
// get the first and second object
// is there something similar to Ruby .empty? to check for something present at an intersection? Can this work for objects as well as arrays?
// Use that behavior to check if there is a key/value pair in common
// else (letter_array & consonant_bank).empty? == false
//       p letter_array & consonant_bank


// Release 2
// get an integer (passed in as an argument)
// set up an empty array to store upcoming strings
// set up a letter bank array to use to construct the random words
// use Math.random to generate the varying length
// we know from the integer how many words we will construct
// the length of the word should be random
// the letters in the word can be random





