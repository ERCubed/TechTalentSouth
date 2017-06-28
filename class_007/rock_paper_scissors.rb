# Write a Rock, Paper, Scissors game where a user can play against the computer.

# The user should enter rock, paper, or scissors (remember to account for differences in capitalization!), and the computer will choose a random value.
# After each turn display the score (user wins vs. computer wins).
# Whichever player reaches five wins first is the winner!

# Initialize counting variables to zero
player_wins = 0
computer_wins = 0
ties = 0

# Loop through the program until the player or computer wins 5 times
until player_wins == 5 || computer_wins == 5 do

	puts "What do you pick? [rock, paper, scissors]"
	player_input = gets.chomp.downcase
	comp = ["rock", "paper", "scissors"]
	play = comp[rand(comp.size)]

	puts "The computer picked #{play}"
	if player_input == "rock"
		
		if play == "rock"
			puts "tie"
			ties += 1
		elsif play == "paper"
			puts "you lose"
			computer_wins += 1
		elsif play == "scissors"
			puts "you win"
			player_wins += 1
		end

	elsif player_input == "paper"

		if play == "rock"
			puts "you win"
			player_wins += 1
		elsif play == "paper"
			puts "tie"
			ties += 1
		elsif play == "scissors"
			puts "you lose"
			computer_wins += 1
		end

	elsif player_input == "scissors"

		if play == "rock"
			puts "you lose"
			computer_wins += 1
		elsif play == "paper"
			puts "you win"
			player_wins += 1
		elsif play == "scissors"
			puts "tie"
			ties += 1
		end

	else
		puts "C'mon... Play the game right."
	end

end

puts "The final score in #{player_wins + computer_wins + ties} rounds: \n  You: #{player_wins}\n  Computer: #{computer_wins}"

puts player_wins > computer_wins ? "You Win!" : "You Lose."