
# In this project, you'll visualize the swapping strategy of selection sort, similar to the screenshot on the right.

# To start off with, you'll need to bring in the selection sort algorithm code from the last challenge. Then, come up with an array of data and send that through the algorithm. For each iteration of the algorithm, display the current state of the array on the canvas, and then draw a line or arrow that shows the numbers being swapped.

# Once you've successfully displayed the array being sorted, create 3 more arrays and display them as well, in a quadrant on the canvas. Create one array with reverse sorted values, one array where a few values are the same, and one array where only one value is out of order.

def displayArray(array, firstIndex, secondIndex)
  newArray = Array.new
  for i in 0..array.length-1 do
    if i == firstIndex || i==secondIndex
      newArray << "#{array[i]}*"
    else
      newArray << "#{array[i]}"
    end
  end
  puts "The newArray is #{newArray}"
end

def swap(array, firstIndex, secondIndex)
  displayArray(array, firstIndex, secondIndex)
  temp = array[firstIndex]
  array[firstIndex] = array[secondIndex]
  array[secondIndex] = temp
end

def indexOfMinimum(array, startIndex)
  minValue = array[startIndex]
  minIndex = startIndex
  for i in (minIndex + 1)..array.length-1 do
    if array[i] < minValue
      minIndex = i
      minValue = array[i]
    end
  end
  minIndex
end

def selectionSort(array)
  for i in 0..array.length-1 do 
    min = indexOfMinimum(array, i)
    swap(array, i, min)
  end 
end

array = [22, 11, 99, 88, 9, 7, 42]
selectionSort(array)
puts "Array after sorting #{array}"

array2 = [15,12, 33, 1, 8]
selectionSort(array2)
puts "Array2 after sorting #{array2}"

array3 = [25, 1, 13, 77, 9,14]
selectionSort(array3)
puts "Array3 after sorting #{array3}"

array4 = [1, 2, 3, 5, 4]
selectionSort(array4)
puts "Array4 after sorting #{array4}"