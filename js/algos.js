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

/*Release 1
Longest phrase return
Pseudocode
1.  Make a function (call it "keyvaluematch").  It will input two variables
2. variable 'is_match' = false until determined otherwise
3. Iterate over all keys in one of the object
  a. Create an if statement:  If the key AND the value are == for both objects.  Thus, if object1[key] = object2[key].  Then is_match becomes true.b.  If no match is found for that specific key, the iterate to the subsequent key
*/

function keyvaluematch(object1, object2) {
  var is_match = false;
  var i = 0
  while (i < Object.keys(object1).length) //Iterating over all keys for
    {
      if (object1[Object.keys(object1)[i]] == object2[Object.keys(object1)[i]]) //If the values for any corresponding keys are equivalent for the two objects
       {
        is_match = true;
    }
    i++
  }
  return is_match;
}

/*Release 2
Generates random test data
Pseudocode
1. Write function that inputs an integer.
2. Will use that integer to formulate a loop n-times
3. For each loop iteration, will need to determine the length of the word using a random number generator (that generates a number between 1 and 10.
  a. (Found that Math.floor((Math.random() * 10) + 1) will do it ).  Will generate as many chars (using a random number generator of lowercase letters via an array, thus Math.floor((Math.random() * 26) + 1)) using this random number generator
*/

function random_output(number){
  var lowercase = "abcdefghijklmnopqrstuvwxyz";
  var word_array = []

  for (i=0; i < number; i++) {
    for (j=0; j < Math.floor((Math.random() * 10) + 1) ; j++) {
    word_array.push(lowercase[Math.floor((Math.random() * 25) + 1)])
   }

   output = word_array.join('');
  }
  return output
}


test1 = max_phrase("I am a rock", "You know who", "Mike rules forever AMEN", "Chuck", "testing", "123", "This is a boy who is going to town", "best of you")

console.log(test1)

test2 = max_phrase("Tom Sawyer", "Limelight", "Cygnus X-1", "Hemispheres", "Subdivisions", "Marathon", "Time Stands Still", "Manhattan Project", "Territories")

console.log(test2)

test3 = max_phrase("Refrigerator", "Mississippi", "Abracadabra", "Massachusetts", "California")
console.log(test3)

console.log("")
console.log("")
console.log("")

var Bill = {age: 25, weight: 220, hometown: "LA"}
var Jim = {age: 27, weight: 220, hometown: "NY"}
test4 = keyvaluematch(Bill, Jim)
console.log(test4)
var Sally = {weight: 130, lives_at: "Chicago", favorite_team: "Cubs"}
var Jane = {height:63, age: 47, favorite_team: "Lakers", aspiration: "Physician"}
test5 = keyvaluematch(Sally, Jane)
console.log(test5)
console.log("")
console.log("")
console.log("")

test6 = random_output(1)
console.log(test6)