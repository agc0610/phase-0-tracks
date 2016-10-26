// declare function to reverse a string
// define parameters
// make space for the new word to store the function's behavior aka make a variable
//iterate over the string
  //use the string's length, subtracting one every time the loop runs
  //run as long as the length is greater than or equal to zero, which means there are letters left to read
  //i -- to count down/go backwards
  //as the loop runs, store each letter in the new word variable
  //append the letters to create one string instead of storing an array of letters
  //give back the reversed word as output
// I'm confused why this lesson says there is no equivalent to Ruby's reverse when there is in fact a way to just call reverse in a JS function. The commented out one below is how I would have written the assignment if I were being paid to write JS; the actual one is how I would break down the process.


// function reverseString(string) {
//   return string.split('').reverse().join('');
// }

function reverseString(string) {
var reversed_word = '';
  for (var i = string.length - 1; i >= 0; i--)
    reversed_word += string[i];
  return reversed_word;
}

var new_word = reverseString("finally javascript");
if (1==1) {
  console.log(new_word)
} else {
  console.log("End of function!")
}

