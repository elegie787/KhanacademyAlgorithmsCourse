def binarySearch (array, target)
  min = 0
  max = array.length - 1
  
  if max < min
    return -1
  end
  guess = ((min + max) / 2).floor
  while array[guess] != target
  
    if array[guess] == target
     break
    elsif array[guess] > target
      max = guess - 1
      puts "Your guess of #{guess} is too high"
      guess = ((min + max) / 2).floor
    else array[guess] < target 
      min = guess + 1
      puts "Your guess of #{guess} is too low"
      guess = ((min + max) / 2).floor
    end
  end
  return puts "Found prime at index #{guess}"

end

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
result = binarySearch(primes, 73)
