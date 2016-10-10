// Pseudocode for implementing a reverse function for a string
//
//
//2. Create a function that does the following:
//  a) Creates a loop that stores the following string in an array
//  b) Counts down the loop from its final letter (i = string.length) to its first letter i>=0 using i--
//  c) Concurrently, assign each letter to a new array variable by counting upwards from 0 to the string.length
//  d) Perform a 'join' on that variable/array in order to group it together like a word.
//3. In driver code, implement the function using a couple strings

function reverse(string) {
    var stringrev = []
  for (var i = string.length - 1, j=0 ; i >= 0  ; i--, j++) {
    stringrev[j] = string[i];
  }
  return stringrev.join('')
}

test1 = reverse("Michael");
console.log(test1)


test2 = reverse("Mike");
console.log(test2)


test3 = reverse("I am a rock.  I am an island.");
console.log(test3)
console.log("")
console.log("")
console.log("")


if (test1=="leahciM") {
  console.log("You nailed it!  Michael reversed is " + test1)
}

if (test1!="leahciM") {
  console.log("Nope!!! Michael reversed is actually " + test1)
}

if (test2=="eekiM") {
  console.log("You nailed it!  Mike reversed is " + test2)
}

if (test2 !="eekiM") {
  console.log("Nope!!! Mike reversed is actually " + test2)
}