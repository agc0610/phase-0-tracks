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
// pass to function
// use object.keys to split both into arrays of their respective keys
// RESEARCH comparing two arrays
// if there is a key match, nested if/else to then see if the matching key has the same value
// RESEARCH try using object.values (experimental, documentation says) to then compare a key's value?
// if there is one, return true

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
// get an integer (passed in as an argument)
// set up an empty array to store upcoming strings
// set up a letter bank array to use to construct the random words
// use Math.random to generate the varying length
// we know from the integer how many words we will construct
// the length of the word should be random
// the letters in the word can be random

function randomNumber(min, max) {
  // Math.floor removes the decimals so that this can run in the word maker function correctly
  return Math.floor(Math.random() * (max - min) + min);
}

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

function wordGenerator(numberOfWords) {
  var words = [];
  while (numberOfWords > 0) {
    var lengthOfWord = randomNumber(1, 10);
    words.push(randomWordMaker(lengthOfWord));
    numberOfWords--;
  }
  console.log(words);
}

var numberOfWords = 3
wordGenerator(numberOfWords)





