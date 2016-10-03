// 7.1
// Pseudocode
// Function takes in a string. Stores the string into an array.
// using a for loop, for i equal to the array length while i is greater than 0
// take the stored character in that array and add it to return string
// 		for "hello" it should store hello as an array ['h','e','l','l','o']
//		when it loops through answerString = answerString + array[index]
//		The for loop works backwards starting from the largest significant value of the array
//		counting down to the last one.
// return the answerString

function reverse(string){
	var strArray = string.split("");
	var answerString = " ";
	console.log(answerString);
	// need to use .length -1 because the length of the array is not zero indexed
	// so length returns a value that is index + 1
	for (i = strArray.length - 1; i >= 0; i--){
		answerString += strArray[i];
	}
	return answerString;
}
// They see me DRIVING they hating
var drive1 = reverse("hello");
var drive2 = reverse("melon");
var drive3 = reverse("what the what what");