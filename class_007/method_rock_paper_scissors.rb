# Write a Rock, Paper, Scissors game where a user can play against the computer.

# The user should enter rock, paper, or scissors (remember to account for differences in capitalization!), and the computer will choose a random value.
# After each turn display the score (user wins vs. computer wins).
# Whichever player reaches five wins first is the winner!

# Define our main logic for who wins the round (also switching if/elsif/else to be a case statement)
def rock_paper_scissors_processor(player_choice, computer_choice)

	case player_choice
	when "rock"

		case computer_choice
		when "rock"
			puts "tie"
			@ties += 1
		when "paper"
			puts "you lose"
			@computer_wins += 1
		when "scissors"
			puts "you win"
			@player_wins += 1
		end

	when "paper"

		case computer_choice
		when "rock"
			puts "you win"
			@player_wins += 1
		when "paper"
			puts "tie"
			@ties += 1
		when "scissors"
			puts "you lose"
			@computer_wins += 1
		end

	when "scissors"
		
		case computer_choice
		when "rock"
			puts "you lose"
			@computer_wins += 1
		when "paper"
			puts "you win"
			@player_wins += 1
		when "scissors"
			puts "tie"
			@ties += 1
		end

	else	# This is an unknown player input
		puts "C'mon... Play the game right."
	end
	
end

# Define the content of the loop itself
def game_loop
	puts "What do you pick? [rock, paper, scissors]"
	player_input = gets.chomp.downcase
	comp = ["rock", "paper", "scissors"]
	play = comp[rand(comp.size)]

	puts "The computer picked #{play}"
	
	# The main logic for who wins is now in a method
	rock_paper_scissors_processor(player_input, play)
end


# Initialize counting variables to zero
# Note the '@' in front of the vairable. This is to make is global, and accessible in the method
@player_wins = 0
@computer_wins = 0
@ties = 0

# Loop through the program until the player or computer wins 5 times
until @player_wins == 5 || @computer_wins == 5 do
	game_loop
end


puts "The final score in #{@player_wins + @computer_wins + @ties} rounds: \n  You: #{@player_wins}\n  Computer: #{@computer_wins}"

# Using a ternary if statement to print out the winner
puts @player_wins > @computer_wins ? "You Win!" : "You Lose."