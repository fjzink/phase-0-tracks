/*
function: reverse(str)
input: string
output: string
*Transform the input string into a an array of the characters from the string.
*Iterate through this array and add each index to the beginning of a new array.
*Transform the second array back into a string.
*Return the new string.
*/
function reverse(str) {
	firstArray = str.split('');
	secondArray = [];
	for (var i = 0; i < str.length; i++) {
		secondArray.unshift(firstArray[i]);
	}
	var out = secondArray.join('')
	return out
}

var reversedString = reverse("hello")

if (1 == 1) {
	console.log(reversedString)
}