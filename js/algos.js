// 7.3 
// write a function that takes an array of strings and returns the longest
// string in the array.

// PSUEDO CODE
// function takes an array of strings
// checks the length of each item in the array and saves the index
// of the longest word. Then use that index to return the array[index]

function LongestString(stringArray){
	var longestIndex = 0;
	var strLength = stringArray[0];
	for (i = 1; i < stringArray.length; i++){
		if (stringArray[i] > strLength) {
			longestIndex = i;
			strLength = stringArray[i].length;
		}
	}
	return stringArray[longestIndex];
}

var arrayOfStrings = ["long phrase","longest phrase","longer phrase"];
console.log(LongestString(arrayOfStrings));
