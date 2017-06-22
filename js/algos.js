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