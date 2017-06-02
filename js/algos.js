/* In function create variable for longest string. iterate through array with for loop and if the current index length is greather than the one before then set the longest string variable equal to the index. */
function longestPhrase(array){
  longest = array[0];
  for (var i = 1; i < array.length; i++) {
    if (array[i].length > longest.length){
      longest = array[i]
    }
  }
  return longest;
}

/*Convert both objects to arrays so that they can be iterated through and the iteration counter can be used to call the index. compare both arrays and change boolean if equal. */
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

/*Take an integer and use for FOR loop. in loop use random number to select an index of an alphabet array and push number into string. add string to array. */
function randomArray(num){
  array = []
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  for (var x = 0; x < num; x++){
    string = "";
    for (var y = (Math.floor(Math.random()*10)) + 1; y > 0; y--){
      string += alphabet[Math.floor(Math.random() * alphabet.length)]
    }
    array.push(string);
  }
  return array;
}

/*DRIVER CODE
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));

console.log(matchCheck({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(matchCheck({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(matchCheck({name: "Steven", age: 54}, {animal: "Dog", legs: 3}));
*/
for (var x=0;x<10;x++){
  array = randomArray(5);
  console.log("Out of this array:")
  console.log(array);
  string = longestPhrase(array);
  console.log("This word is the longest:")
  console.log(string);
}