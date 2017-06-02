var colors=["blue","brown","black","white"];
var names=["Ed","Rocket","Java","Ruby"];

colors.push("silver");
names.push("Joe");

/* Driver Code
console.log(colors);
console.log(names); */
var horse = {};
for (var i = 0; i <= colors.length-1; i++) {
  horse[names[i]] = colors[i];
}
// console.log(horse);
