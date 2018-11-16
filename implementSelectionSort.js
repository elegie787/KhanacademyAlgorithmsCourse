// Selection sort loops over positions in the array. For each position, it finds the index of the minimum value in the subarray starting at that position. Then it swaps the values at the position and at the minimum index. Write selection sort, making use of the swap and indexOfMinimum functions. 

// Once implemented, uncomment the Program.assertEqual() at the bottom to verify that the test assertion passes.

var swap = function(array, firstIndex, secondIndex) {
  var temp = array[firstIndex];
  array[firstIndex] = array[secondIndex];
  array[secondIndex] = temp;
};

var indexOfMinimum = function(array, startIndex) {

  var minValue = array[startIndex];
  var minIndex = startIndex;

  for(var i = minIndex + 1; i < array.length; i++) {
      if(array[i] < minValue) {
          minIndex = i;
          minValue = array[i];
      }
  } 
  return minIndex;
}; 

var selectionSort = function(array) {
    var min;
  for(var i = 0; i < array.length; i++){
    min = indexOfMinimum(array, i);
    swap(array, i, min);
  }
};

var array = [22, 11, 99, 88, 9, 7, 42];
selectionSort(array);
println("Array after sorting:  " + array);

Program.assertEqual(array, [7, 9, 11, 22, 42, 88, 99]);

var array2 = [15, 12, 33, 1, 8];
selectionSort(array2);
Program.assertEqual(array2, [1, 8, 12, 15, 33]);

var array3 = [25, 1, 13, 77, 9, 14];
selectionSort(array3);
Program.assertEqual(array3, [1, 9, 13, 14, 25, 77]);
