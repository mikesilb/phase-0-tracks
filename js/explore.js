// Pseudocode for implementing a reverse function for a string
//
//
//2. Create a function that does the following:
//  a) Creates a loop that stores the following string in an array
//  b) Counts down the loop from its final letter (i = string.length) to its first letter i>=0 using i--
//3. In driver code, implement the function using a couple strings

function reverse(string) {
  for (var i = string.length; i >= 0  ; i--) {
   console.log(string[i]);
  }
}



reverse("Michael")

reverse("Mike")

reverse("I am a rock.  I am an island.")
