// 7.3 
// write a function that takes an array of strings and returns the longest
// string in the array.

// PSUEDO CODE
// function takes an array of strings
// checks the length of each item in the array and saves the index
// of the longest word. Then use that index to return the array[index]

function LongestString(stringArray){
	var longestStr = "";
	var longest = 0;
	for (i = 0; i < stringArray.length; i++){
		if (stringArray[i].length > longest) {
			longest = stringArray[i].length;
			longestStr = stringArray[i];
		}
	}
	return longestStr;
}

// Add a function that takes in two objects as input
// and checks to see if one of their key value pairs is equivalent

function KeyValueMatch(obj1, obj2){
	var flag = false;
	for (var key1 in obj1) {
		for (var key2 in obj2) {
			if obj1[key1] == obj2[key2]{
				flag = true;
			}
		}
	}
	return flag;
}


// DRIVER CODE
/*
var arrayOfStrings = ["long phrase","longest phrase","longer phrase"];
var array1 = ["a", "ab", "abc", "abcd"];
var array2 = ["this", "thats", "really really long", "not long"];
console.log(LongestString(arrayOfStrings));
//should return "longest phrase"
console.log(LongestString(array1));
//should return "abcd"
console.log(LongestString(array2));
//should return "really really long"
*/

