// take in a string of characters
// create place to store the new backwards string
// Start at the beginning of the string
// FOR EACH letter
// store letter in place holder adding any previous letters behind it


// reverse function 
function reverse(input) {
	var reverseString = "";
	for (var i = 0; i <= input.length -1; i++) {
		reverseString = input[i] + reverseString;
	}
	return reverseString
}

// storing result of the function in variable
var finalOutput = (reverse("Hello, my name is Matt!"))

// driver code to print variable if condition is true
var reverse = true

if (reverse) {
	console.log(finalOutput);
} else {
	console.log("Nothing to see here.")
}




