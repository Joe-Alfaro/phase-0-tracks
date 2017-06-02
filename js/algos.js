/* In function create variable for longest string. iterate through array with for loop and if the current index length is greather than the one before then set the longest string variable equal to the index. */
function longestPhrase(array){
  longest = array[0];
  for (var i = 1; i < array.length; i++) {
    if (array[i] > array[i-1]){
      longest = array[i]
    }
  }
  return longest;
}
function matchCheck(object1, object2){
  var keys1 = Object.keys(object1);
  var values1 = Object.values(object1);
  var keys2 = Object.keys(object2);
  var values2 = Object.values(object2);

  matchFound = false;
  for(var x=0; x<keys1.length; x++){
    for(var y=0;y<keys2.length; y++){
      if(keys1[x]==keys2[y]&&values1[x]==values2[y]){
        matchFound = true;
      }
    }
  }
  return matchFound;
}

//DRIVER CODE
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));

console.log(matchCheck({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(matchCheck({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(matchCheck({name: "Steven", age: 54}, {animal: "Dog", legs: 3}));