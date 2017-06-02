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

function Car(year, make, model) {
  this.year = year;
  this.make = make;
  this.model = model;

  this.rev = function() { console.log("The " + this.year + " " + this.make + " " + this.model + " goes VROOM! VROOM!")};
}

var hondaAccord = new Car(2003, 'Honda', 'Accord');
var hondaCivic = new Car(2009, 'Honda', 'Civic SI')

console.log(hondaAccord);
console.log(hondaCivic);
hondaAccord.rev();
hondaCivic.rev();