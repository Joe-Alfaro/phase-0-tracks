/*
create a new empty string and iterate through string taken as argument starting with index equal to length minus 1. push in index of string into new string. return new string.
*/

function reverse(string){
  var reversedString = "";
  for (var i = string.length -1; i >= 0; i--){
    reversedString += string[i];
    }
    return reversedString;
}

var newString = reverse("Joe Alfaro")

if (1 == 1) {
  console.log(newString);
}