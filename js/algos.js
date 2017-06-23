/*
Release 0
input: array
output: string
*Initialize a variable with an empty string.
*Iterate through the array and check each index with a conditional statement.
*If the current index is longer than the string currently stored to the variable, then assign the current index to the variable.
*Return the variable after the iteration has completed.
*/
function longestString(arr) {
	var biglyString = "";
	for (var i = 0; i < arr.length; i++) {
		if (arr[i].length > biglyString.length) {
			biglyString = arr[i];
		}
	}
	return biglyString
}

someStrings = ["a string", "a bigger string", "the biggest string"];
console.log(longestString(someStrings));

/*
Release 1
input: object, object
output: boolean
*Intialize a variable as false.
*Loop through the keys in each array.
*If two key-value pairs are equal, then set the variable to true.
*Return the variable with boolean value stored to it.
*/

function matchingPair(objFirst, objSecond) {
	var match = false;
	for (var keyFirst in objFirst) {
		for (var keySecond in objFirst) {
			if ((keyFirst === keySecond) && (objFirst[keyFirst] === objSecond[keySecond])) {
				match = true;
			}
		}
	}
	return match
}

var objOne = {aKey: "a value", anotherKey: "another value"};
var objTwo = {someKey: "some value", aKey: "a value"};

console.log(matchingPair(objOne, objTwo))

/*
Release 2
input: integer
output: array of strings
*Initialize and empty array
*Loop a number of times equal to the input.
*On each loop:
	*generate a random word.
	*Add the random word in to the array.
*Return the array.
*/

function randomWords(int) {
	var someWords = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < int; i++) {
		var wordLength = Math.floor(Math.random() * 11);
		var newWord = "";
		for (var j = 0; j < wordLength; j++) {
			var randomLetter = Math.floor(Math.random() * 26);
			newWord += alphabet[randomLetter];
		}
		someWords.push(newWord);
	}
	return someWords;
}

console.log(randomWords(3))