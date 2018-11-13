min = 1
puts "Enter the maximum number:"
max = gets
puts "I will guess a number from 1 to #{max}"
answer = rand(max.to_i)
guess = 0
puts answer.to_s
puts "Please guess a number"
guess = gets
puts guess.to_s
while guess.to_i != answer.to_i

  if guess.to_i == answer.to_i
    break
  elsif guess.to_i > answer.to_i
    max = guess.to_i - 1
    puts "You are too high, please select a number between #{min} and #{max}"
    guess = gets
  else 
    min = guess.to_i + 1
    puts "You are too low, please select a number between #{min} and #{max}"
    guess = gets
  end
end

puts "You Win!"