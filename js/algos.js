// take in a list of words or phrases
// make a place holder where you store longest phrase 
// for EACH word or phrase 
// 	count the number of letters 
// 	IF the number of letters of the current word/phrase is more than the number of letters in the longest phrase placeholder
// 	put the current word/phrase in the longest word placeholder 
// After each word/phrase on the list is gone through print whatever word/phrase is stored in the longest phrase placeholder


function findLongPhrase(phraseList) {
	var longestPhase = ""
	for (var i = 0; i < phraseList.length; i++) {
		if (phraseList[i].length > longestPhase.length) {
			longestPhase = phraseList[i]
		}
	} 
	console.log(longestPhase)
}

var myPhraseList = ["hello", "it's very nice to meet you", "My name is Matt", "What's your name"]
findLongPhrase(myPhraseList)

var wordsList = ["dog", "giraffe", "boy", "rhinoceros",  "girl"]
findLongPhrase(wordsList)