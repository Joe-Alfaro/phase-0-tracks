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

// console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));

