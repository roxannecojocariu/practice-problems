# 1. Ask the user what difficulty they would like to play at - "easy" or "hard".
# 2. Accept user input and save it as a variable.
# 3. Pick a random number. If the user chose "easy", the number should be between 1 and 10. If the user chose "hard", the number should be between 1 and 20.
# 4. Depending on which level the user chose, say that you picked a random number between 1 and 10 or 20, and that the user now has to guess it.
# 5. Start a while loop. The while loop should run for as long as the user hasn't found the correct answer. Each time the loop runs, the user should be asked to pick a number. As long as the answer isn't correct, the user should be asked to try again.
# 6. After the user has found the correct answer, the loop should exit and a congratulatory message should display.

puts "Hello!  Welcome to the Guessing Game! Type Easy or Hard"
user_difficulty = gets.chomp
continue = true

difficulty_easy = rand(10) + 1
difficulty_hard = rand(20) + 1
number_of_guesses = 0
total_guesses = 0

if user_difficulty == "easy"
  puts "I've picked a number between 1 and 10.  Now guess it!"
  while continue do
  user_guess = gets.chomp
  user_guess = user_guess.to_i
  number_of_guesses += 1
  total_guesses = number_of_guesses

    if user_guess == difficulty_easy
      puts "You win! Nice job!"
      puts "Your score was #{total_guesses}"
      continue = false
    elsif user_guess != difficulty_easy
      puts "Nope, try again!"
      continue = true
    end
  end
elsif user_difficulty == "hard"
  puts "I've picked a number between 1 and 20.  Now guess it!"
  while continue do
  user_guess = gets.chomp
  user_guess = user_guess.to_i
  number_of_guesses += 1
  total_guesses = number_of_guesses
    if user_guess == difficulty_hard
      puts "You win! Nice job!"
      puts "Your score was #{total_guesses}"
      continue = false
    elsif user_guess != difficulty_hard
      puts "Nope, try again!"
      continue = true
    end
  end
end
