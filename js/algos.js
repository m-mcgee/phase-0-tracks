
// take in a list of words or phrases
// ----- Pseudocode ----------------

// Release 0
// Make a place holder where you store longest phrase 
// for EACH word or phrase 
// 	count the number of letters 
// 	IF the number of letters of the current word/phrase is more than the number of letters in the longest phrase placeholder
// 	put the current word/phrase in the longest word placeholder 
// After each word/phrase on the list is gone through print whatever word/phrase is stored in the longest phrase placeholder

// Release 1
// Take in two objects 
// Set match status to equal false because no match has yet been made
// For EACH key in object 1
//  For EACH key in object 2
// 		if the key and value match the key and value from object 1
// 			set match status to true
// return match status

// ------ Functions ----------------

function findLongPhrase(phraseList) {
	var longestPhase = ""
	for (var i = 0; i < phraseList.length; i++) {
		if (phraseList[i].length > longestPhase.length) {
			longestPhase = phraseList[i]
		}
	} 
	console.log(longestPhase)
}


function findKeyValueMatch(object1, object2) {
	var hasMatch = false
	for (var key1 in object1) {
			
			for (var key2 in object2) {
				
				if (key2 == key1 && object2[key2] == object1[key1]) {
					hasMatch = true;
				}
			}
	}
	return hasMatch;
}



// ------ Driver Code ---------------

var myPhraseList = ["hello", "it's very nice to meet you", "My name is Matt", "What's your name"]
findLongPhrase(myPhraseList)
var wordsList = ["dog", "giraffe", "boy", "rhinoceros",  "girl"]
findLongPhrase(wordsList)

var myObject = {name: "Steven", age: 54}
var myObject2 = {name: "Tamir", age: 54}
var myObject3 = {name: "Jeff", age: 99}
console.log(findKeyValueMatch(myObject, myObject2))
console.log(findKeyValueMatch(myObject, myObject3))




