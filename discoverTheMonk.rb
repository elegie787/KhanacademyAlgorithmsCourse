# You are given an array A of size N, and Q queries to deal with. For each query, you are given an integer X, and you're supposed to find out if X is present in the array A or not.

# Input:
# The first line contains two integers, N and Q, denoting the size of array A and number of queries. The second line contains N space separated integers, denoting the array of elements Ai. The next Q lines contain a single integer X per line.

# Output:
# For each query, print YES if the X is in the array, otherwise print NO.

# Constraints:
# 1 <= N, Q <= 105
# 1 <= Ai <= 109
# 1 <= X <= 109

def average(array, min, max)


  avg = ((min + max) / 2).floor

  #puts "I am in the average def, avg is #{avg} and min is #{min}"
  return avg
end

# def reduceArray(guess, array, min, max, avg)
#   if guess < array[avg]
#     return false
#   elsif guess > array[avg]
#     max.replace(avg - 1)
#   else
#     return -1
#   end
# end

#puts "Enter an Array Size, space, then number of queries"
input = gets.chomp
size, queryCount = input.split

#puts "Enter #{size} numbers IN DESCENDING ORDER"
array = Array.new(size.to_i)
input = gets
array = input.split(' ')
array = array.map(&:to_i)
#puts array.sort{|x,y| y <=> x }
array = array.sort{|x,y| y <=> x }

while queryCount.to_i != 0
  #puts "You have #{queryCount} guesses left"
  min = 0 
  max = array.length - 1
  found = false
  #puts "Enter a guess"
  guess = gets.chomp 
  tries = 0
  while found == false && tries <=  Math.log2(size.to_i)
    #puts "Min = #{min} max = #{max}"
    avg = average(array, min, max)
    #puts "avg is #{avg}"
    if guess.to_i == array[0].to_i
      #puts "Guess is in array location 0"
      found = true
      break
    elsif guess.to_i < (array[avg]).to_i
      #puts "Guess #{guess} is smaller than value at array[#{avg}] which is " + array[avg]
      min = avg + 1
      #puts min
      tries = tries + 1
    elsif guess.to_i > (array[avg]).to_i
      #puts "Guess #{guess} is larger than value at array[#{avg}] which is " + array[avg]
      max = avg - 1
      tries = tries + 1
    elsif guess.to_i == (array[avg]).to_i
      #puts "guess #{guess} is equal to array[#{avg}] which is " + array[avg]
      found = true
      break
    end
  end
  if found == true
    puts "YES"

  else
    puts "NO"
  end
  queryCount = queryCount.to_i - 1
end
