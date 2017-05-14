secret = rand(1..10)

puts secret
puts "Guess a number between 1 and 10"
guess = gets.to_i
while (secret != guess) do
  puts "Guess again! Your guess: #{guess}"
  guess = gets.to_i
end
puts "The number was: #{secret} You got it!" 
