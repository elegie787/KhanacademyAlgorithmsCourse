min = 1
puts "Enter the maximum number:"
max = gets
puts "I will guess a number from 1 to #{max}"
answer = rand 1..max.to_i
puts answer
guess = ((min.to_i + max.to_i) / 2).floor
puts "Your first guess was #{guess}"
while guess.to_i != answer.to_i
  if guess.to_i == answer.to_i
    break
  elsif guess.to_i > answer.to_i
    max = guess.to_i - 1
    puts "Your guess of #{guess} was too high"
    guess = ((min.to_i + max.to_i) / 2).floor
  
  else 
    min = guess.to_i + 1
    puts "Your Guess of #{guess} was too low"
    guess = ((min.to_i + max.to_i) / 2).floor

  end
end

puts "You Win! the correct answer was #{guess}"