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
		if (arr[i].length > biglyString) {
			biglyString = arr[i];
		}
	}
	return biglyString
}

someStrings = ["a string", "a bigger string", "the biggest string"]
console.log(longestString(someStrings))