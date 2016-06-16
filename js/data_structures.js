// array of four colors
// array of names of horses

var colors = ["blue", "green", "red", "yellow"];
var horseName = ["Ed", "Joe", "Frank", "Bob"];

colors.push("orange");
horseName.push("LeeRoy");

console.log(colors);
console.log(horseName);

// Create empty object
// IF colors array and horseName are equal length
// 

var nameAndColor = {}

if (colors.length == horseName.length){
	for (var i = 0; i < horseName.length; i++) {
		nameAndColor[horseName[i]] = colors[i];
	}
}

console.log(nameAndColor);