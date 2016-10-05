// 7.2
// declares two separate arrays for colors and horses
var colors = ["blue", "red", "brown", "white"];
var names = ["Neigh", "Henny", "Benny", "Timmy"];

// adds color and name to colors and horses respectively
colors.push("orange");
names.push("Tom");

//add color to a horses name
var horse = {};

for (i = 0; i<names.length; i++){
	horse[names[i]] = colors[i];
}
