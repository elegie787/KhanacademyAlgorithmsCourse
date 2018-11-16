// Finish writing the function indexOfMinimum, which takes an array and a number startIndex, and returns the index of the smallest value that occurs with index startIndex or greater. If this smallest value occurs more than once in this range, then return the index of the leftmost occurrence within this range.

// Once implemented, uncomment the Program.assertEqual() at the bottom to verify that the test assertion passes.

var indexOfMinimum = function(array, startIndex) {
  // Set initial values for minValue and minIndex,
  // based on the leftmost entry in the subarray:  
  var minValue = array[startIndex];
  var minIndex = startIndex;

  for (var x = minIndex + 1; x < array.length; x++ ){
    if (array[x] < minValue){
      minValue = array[x];
      minIndex = x;
    }
  }

  // Loop over items starting with startIndex, 
  // updating minValue and minIndex as needed:
  
  return minIndex;
}; 

var array = [18, 6, 66, 44, 9, 22, 14];   
var index = indexOfMinimum(array, 2);

//  For the test array [18, 6, 66, 44, 9, 22, 14], 
//  the value 9 is the smallest of [..66, 44, 9, 22, 14]
//  Since 9 is at index 4 in the original array, 
//  "index" has value 4
println("The index of the minimum value of the subarray starting at index 2 is " + index + "."  );
Program.assertEqual(index, 4);
println("The index of the minimum value of the subarray starting at index 2 is " + index + "."  );
Program.assertEqual(indexOfMinimum(array, 3), 4);
Program.assertEqual(indexOfMinimum(array, 4), 4);
