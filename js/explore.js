// take in a string of characters
// create place to store the new backwards string
// Start at the beginning of the string
// FOR EACH letter
// store letter in place holder adding any previous letters behind it


var string = "Reverse Me"
var reverseString = ""

for (var i = 0; i <= string.length -1; i++) {
	reverseString = string[i] + reverseString;
}

console.log(reverseString)



