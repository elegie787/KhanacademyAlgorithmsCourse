// # Bangalore City, where peace prevails most of the time. Not everyone is a huge fan of peace, though. Certainly not Mr. XYZ, whose identity is not known to us - yet. Mr. XYZ has somehow managed to bring vampires and zombies to Bangalore City to attack and destroy the city.

// # Fatal Eagle, an ordinary citizen of the city is extremely worried on seeing his city being attacked by these weird creatures. But, as of now, he has no power to stop these creatures from their silent attacks. He wants to analyze these creatures firstly. He figured out some things about these creatures, like:

// # Zombies have power in terms of an EVEN number.
// # Vampires have power in terms of an ODD number.
// # If he sees a zombie or a vampire, he marks them in his list with their power. After generating the entire list of power of these creatures, he decides to arrange this data in the following manner:

// # All the zombies arranged in sorted manner of their power, followed by the total power of zombies.
// # All the vampires arranged in sorted manner of their power, followed by the total power of vampires.
// # You've to help him produce the following list to help him save his city.

// # Input constraints:
// # The first line of input will contain an integer — N, denoting the number of creatures. The next line will contain N integers denoting the elements of the list containing the power of zombies and vampires.

// # Output constraints:
// # Print the required list in a single line.

// # Constraints:
// # 1 ≤ N ≤ 103
// # 1 ≤ Ni ≤ 103

def insert(array, rightIndex, value)
    while ((value % 2 == 0) && ((value < array[rightIndex]) || (array[rightIndex] % 2 != 0))) && rightIndex >= 0
      array[rightIndex+1] = array[rightIndex]
      array[rightIndex] = value
      rightIndex-= 1
    end
   
end 

def insertionSort(array)
  for i in (1..array.length-1) do 
   # puts "Array = #{array}, i-1 = #{i-1}, array[i] = #{array[i]}"
    insert(array, i-1, array[i])
  end
end
def total(array, even)
  total = 0
  for i in 0..array.length-1
    if even == true
      if(array[i] % 2 == 0)
        total+= array[i]
      end
    else 
      if (array[i] % 2 != 0 )
        total += array[i]
      end
    end
  end
  return total
end

#puts "Input size of monster array"
n = gets.chomp()
#puts "Input #{n} numbers separated by a space"
input = gets
array = input.split(' ')
array = array.map(&:to_i)
@evenTotal = total(array, true)
@oddTotal = total(array, false)
insertionSort(array)
#puts "@eventotal is #{@evenTotal}"

#puts "array is #{array}"
for i in (0..(array.length - 1)) do
  if(array[i] % 2 != 0)
    for j in (i..(array.length-1)).reverse_each do
      array[j+1] = array[j]
    end
    array[i] = @evenTotal
    break
  end
end
array[array.length] = @oddTotal
puts array.join(' ')
#puts "Holy shit you didn't make an endless loop!! The Array is #{array}"

