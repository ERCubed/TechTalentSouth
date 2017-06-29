# Define a class for the Team object which will be used to store name and ranking
class Teams

	attr_accessor :name, :rank

	def initialize(name, rank)
		@name = name
		@rank = rank
	end

	def name
		@name
	end

	def rank
		@rank
	end

end

# Initialize a blank array for holding all the tournament teams
@tournament_teams = []

# Method which will display the menu option and return what the user selected
def menu
	puts "Welcome to My Tournament Generator. Enter a selection:"
	puts "	1. Enter teams"
	puts "	2. List teams"
	puts "	3. List matchups"
	puts "	0. Exit program"

	user_selection = gets.chomp.to_i
	return user_selection
end

def input_team
	user_input = ""
	while user_input != "done"
		puts "Add a team for the tournament and their ranking separated by a comma ('done' when finished)"
		user_input = gets.chomp
		team_array = user_input.split(',')
		puts "#{team_array[0]} | #{team_array[1]}"
		team = Teams.new(team_array[0],team_array[1])
		@tournament_teams << team
		puts @tournament_teams
	end

end


# user_selection = menu
user_selection = 99
while user_selection != 0
	user_selection = menu

	case user_selection
	when 1
		input_team

	when 2
		puts "List Teams"
	when 3
		puts "List Matchup"
	when 0
		break
	else
		puts "I don't understand"
	end

end
