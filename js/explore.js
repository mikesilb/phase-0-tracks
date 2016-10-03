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
	strArray = string.split("");
	answerString = "";
	for (i = strArray.length; i > 0; i--;){
		answerString = answerString + strArray[i];
	}
	return answerString
}