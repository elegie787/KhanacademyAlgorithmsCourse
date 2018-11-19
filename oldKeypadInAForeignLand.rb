# Some people remain old fashioned and John is one of them. He doesn't like the new smart phones with full keypads and still uses the old keypads which require you to tap a key multiple times to type a single letter. For example, if the keyboard has two keys, one with the letters "adef" and the other one with the letters "zyx", then typing 'a' requires one keystroke, typing 'f' requires four keystrokes, typing 'y' requires two keystrokes, and so on.
# He recently moved to a new country where the language is such that his keypad is not the most efficient. In every language some characters occur more often than others. He wants to create a specific keyboard for this language that uses N different letters. He has a large body of text in this language, and has already analyzed it to find the frequencies of all N letters of its alphabet.
# You are given an array 'frequencies' with N elements. Each element of frequencies is the number of times one of the letters in the new language appears in the text John has. Each element of frequencies will be strictly positive. (I.e., each of the N letters occurs at least once.)
# You are also given an array keySize. The number of elements of keySize is the number of keys on the keyboard. Each element of keySize gives the maximal number of letters that maybe put on one of the keys.
# Find an assignment of letters to keys that minimizes the number of keystrokes needed to type the entire text. Output that minimum number of keystrokes. If there is not enough room on the keys and some letters of the alphabet won't fit, Output -1 instead.

# Input Format

# The first line will contain a number 'N' that specifies the size of 'frequencies' array
# The second line will contain N numbers that form the frequencies array
# The third line contains a number 'K' that specifies the size of the 'keySize' array
# The fourth line contains K numbers that form the keySize array
# Output Format

# Output a single integer that is answer to the problem.
# Constraints

# frequencies will contain between 1 and 50 elements, inclusive.
# Each element of frequencies will be between 1 and 1,000, inclusive.
# keySizes will contain between 1 and 50 elements, inclusive.
# Each element of keySizes will be between 1 and 50, inclusive.
# SAMPLE INPUT 
# 4
# 7 3 4 1
# 2
# 2 2
# SAMPLE OUTPUT 
# 19
# Explanation
# The foreign language has four letters. Let us call them W, X, Y and Z. John's text contains seven Ws, three Xs, four Ys, and one Z. The keyboard has two keys, each of them may contain at most two letters. One optimal solution is to use the keys "WZ" and "YX". We can then type each W and each Y using a single keystroke, and we need two keystrokes for each X and each Z. Therefore, the total number of keystrokes when typing the entire text will be 71 + 32 + 41 + 12 = 19.
def checkLength(freqArray, keyArray)
  total = 0
  keyArray.each do |k|
    total =  total + k
  end
  if total < freqArray.length 
    return -1
  else 
    return total
  end
end

def selectionSort(array, reverse)
    #puts "array.length-1 is #{array.length - 1}"
    for i in (0..array.length-1) do
     # puts "reverse array i = #{i}"
      min = indexOfMinimum(array, i, reverse)
      swap(array, i, min)
    end
  
  array
end

def indexOfMinimum(array, startIndex, reverse)
  minValue = array[startIndex]
  minIndex = startIndex
  for i in (minIndex + 1)..array.length-1 do
    if reverse == false
      if array[i] < minValue
        minIndex = i
        minValue = array[i]
      end
    else 
      if array[i] > minValue
        minIndex = i
        minValue = array[i]
      end
    end
  end
  minIndex
end
def swap(array, firstIndex, secondIndex)

  temp = array[firstIndex]
  array[firstIndex] = array[secondIndex]
  array[secondIndex] = temp

end



#puts "Please enter the size of the 'frequencies' array"
freqSize = gets.chomp
#puts "Please enter #{freqSize} numbers separated by a space"
input = gets
freqArray = input.split(' ')
freqArray = freqArray.map(&:to_i)

#puts "Please enter the size of the 'key' array"
keySize = gets.chomp
#puts "Please enter #{keySize} numbers separated by a space"
input = gets
keyArray = input.split(' ')
keyArray = keyArray.map(&:to_i)

total = checkLength(freqArray, keyArray)
if total == -1
  exit
  #puts "Invalid value please try again"
end

newFreq = selectionSort(freqArray, true)

newKey = selectionSort(keyArray, false)


resArray = Array.new
incrementer = 0
for i in 0..keySize.to_i-1 do
  x = newKey[i].to_i

  while (incrementer < total) && (x > 0)
     resArray << x
     incrementer = incrementer + 1
     x = x - 1
  end
end

newRes = selectionSort(resArray, false)
#puts "newRes is #{newRes}"
sum = 0
#puts "newfreq is #{newFreq}"
for x in 0..newFreq.length-1 do
   sum = sum + (newFreq[x].to_i * newRes[x].to_i)
end
#puts "Sum is #{sum}"
puts sum