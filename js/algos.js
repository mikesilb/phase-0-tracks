/*Release 0
Longest phrase return
Pseudocode
1. Split by each char
2. Assuming that this converts into a multidimensional array (where the first number is the index of each phrase and the second number contains each char per phrase), determine the length of the second number for each item in multidimensional array.
  A) While the final tested index < the length of the first number in the array.
    1) Compare (the second number of) the first index to (the second number of) the second index.
      a) If 1 > 2, 1 is the leader.  If 2 > 1, 2 is the leader.
        1) DEBUG: print to console the winner of each competition.
      b) Compare the 'imcumbent leader' to the newest entry in the array.
  B) Print to console the final winner
*/

function max_phrase() {
  var arg_length = []
  var phrase = []
  for (i=0 ; i < arguments.length ;i++) {
  arguments[i].split("")
    arg_length[i] = (arguments[i].length)
    phrase[i] = arguments[i]
  }
    var leader = arg_length[0]
    var lowest = 0
    var highest = 1
    var top = null
    while (highest < arguments.length) {
      if (leader < arg_length[highest]) {
           leader = arg_length[highest]
           lowest=highest
           top = phrase[highest];
      }
      else{
          top = phrase[lowest];
      }

//      console.log(leader);
      highest++;
  }
  return top
}
test1 = max_phrase("I am a rock", "You know who", "Mike rules forever AMEN", "Chuck", "testing", "123", "This is a boy who is going to town", "best of you")

console.log(test1)

test2 = max_phrase("Tom Sawyer", "Limelight", "Cygnus X-1", "Hemispheres", "Subdivisions", "Marathon", "Time Stands Still", "Manhattan Project", "Territories")

console.log(test2)

test3 = max_phrase("Refrigerator", "Mississippi", "Abracadabra", "Massachusetts", "California")
console.log(test3)