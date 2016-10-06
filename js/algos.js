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
			if ((key1 == key2) && (obj1[key1] == obj2[key2])){
				flag = true;
			}
		}
	}
	return flag;
}
// function takes an integer and returns an array of that length
// where each item in that array is a randomly generated string.
// 	breakdown:
//	create the array of length 'length'.
//	fill the array with random strings of length 1-10
//	return the array
function RandomStringArr(length){
	var array = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var randString = "";
	var randLength = 0;
	for (i = 0; i < length; i++){
		// generates a random length between 1-10 
		randLength = Math.floor(Math.random() * 9) + 1;
		for (j = 0; j < randLength; j++){
			randString += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
			
		}
		array.push(randString);
		// reset randString otherwise you're strings will be too long
		randString = "";
	}
	return array;
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


// DRIVER CODE Release 2 
var firstObj = {name: "Steven", age: 54};
var secondObj = {name: "Tamir", age: 54};

console.log(KeyValueMatch(firstObj,secondObj));
// should return true
var anotherObj = {fame: "real", game: "teal"};
console.log(KeyValueMatch(firstObj, anotherObj));
// should return false
var otherObj = {name: "Tamir", age: 20};
console.log(KeyValueMatch(firstObj,otherObj));
//should return false


// DRIVER CODE release 3
console.log(RandomStringArr(10));
//should print an array with 10 elements and random strings in each
console.log(RandomStringArr(5));
//should print an array with 5 elements and random strings in each
console.log(RandomStringArr(1));
//should print an array with 1 elements and random strings in each
*/


