puts "Welcome to 'Get My Number'!"
print "What's your name? "
name = gets
name.chomp!
target = rand(101)
puts "Welcome, #{name}!"
puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
guessed = false
max_guesses = 10

while max_guesses > 0 && !guessed
  puts "You have #{max_guesses} guesses left."
  print 'Make a guess: '
  guess = gets.to_i

  if guess > target
    puts "Sorry #{name}, your guess is too high!"
  elsif guess < target
    puts "Sorry #{name}, your guess is too low"
  else
    puts "Good job #{name}! Your are right!!"
    guessed = true
  end
  max_guesses = max_guesses -  1
end

unless guessed
  puts "Sorry #{name}, you didn't guess my number. It was #{target}"
end
