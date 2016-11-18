// Release 0
// in the driver code get the array
// pass that into the function call
// set up a counter to start at zero for a condition to check against
// introduce an empty variable to store the return value we are looking for
// go through each item in the array (for loop so it stops at end of array?)
// FINISH IN algos.js

function longestString(arr) {
  var strlength = 0;
  var longest = "";
  for(var i=0; i < arr.length; i++){
      if(arr[i].length > strlength){
          var strlength = arr[i].length;
          longest = arr[i];
      }
  }
  return longest;
}

// var arr = ['robots make noises', 'robots', 'they make beep boop noises all day'];
// var arr = ['hello', 'what is for dinner', 'I want to eat right this minute']
// longestString(arr);

// Release 1
// get the first and second object
// pass to function
// loop through first object's keys
// inside that loop check second object's keys against first
// check if there is a match between keys as well as values
// conditionals?
// RESEARCH try using object.values (experimental, documentation says) to then compare a key's value? can't really do that it turns out right now
// if there is one, return true
// otherwise return false

function findPairs() {
  for (var key1 in object1) {
    for (var key2 in object2) {
      if (key1 === key2 && object1[key1] === object2[key2]) {
        return true;
      }
    }
  } return false;
}


var object1 = {
  name: "Steven",
  // last_name:
  age: 54
  // your_age:
};

var object2 = {
  name: "Tamir",
  age: 54
};

findPairs(object1, object2);

// Release 2

// use Math.random to generate the varying lengths for the word and the letters in the word
// Math.floor removes the decimals so that this can run in the word maker function correctly
function randomNumber(min, max) {
  return Math.floor(Math.random() * (max - min) + min);
}

// Set up letterbank to draw from
// set up empty space for a word's letters to go
// use length of word from wordgenerator as passed in parameter to this loop
  // as long as length of word is greater than zero
  // use randomnumber to pick a random letter from the letter_bank
  // add that to the word
  // decrease length of word to get to zero eventually
// return the word, which becomes the value of randomWordMaker passed into the array
function randomWordMaker(lengthOfWord) {
  letter_bank = "abcdefghijklmnopqrstuvwxyz";
  word = "";
  while (lengthOfWord >= 0) {
    var index = randomNumber(0, 26);
    word += letter_bank[index];
    lengthOfWord--;
  }
  return word;
}

// start with 3 words
// set up empty array to return the words per instructions
// iterate that many times
// while greater than 0
  // length of word should be between 1 and 10 letters
  // use randomWordMaker and the length of word that is randomly generated to make a word and put it in the array
  // decrease the number of words length to dial down the iterating
// return the array
function wordGenerator(numberOfWords) {
  var words = [];
  while (numberOfWords > 0) {
    var lengthOfWord = randomNumber(1, 10);
    words.push(randomWordMaker(lengthOfWord));
    numberOfWords--;
  }
  return words;
}

// original driver code
// var numberOfWords = 3
// wordGenerator(numberOfWords)

// Release 2 driver code
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
var words = wordGenerator(10);
console.log(words);
var longestWord = longestString(words);
console.log(longestWord);




