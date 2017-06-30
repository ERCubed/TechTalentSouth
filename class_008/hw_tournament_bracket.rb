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
		if team_array[0] != "done"	# Don't save the "done" as another team!
			team = Teams.new(team_array[0],team_array[1])
			@tournament_teams << team
		end
	end
end

def list_teams
	# In case the user did not enter the teams in ranking order, we can use
	# Ruby's Array.sort_by method to sort the array by team rank.
	sorted_teams = @tournament_teams.sort_by{|t| t.rank}
	sorted_teams.each do |team|
		puts "#{team.rank}. #{team.name}"
	end
end

def seed_tournament
	# Again, sort teams by rank before beginning the seed process
	sorted_teams = @tournament_teams.sort_by{|t| t.rank}

	# If we have an odd number of teams, the top rank autoatically gets a bye.
	if sorted_teams.size%2 == 1
		top_seed = sorted_teams.shift	# Take the top seed out and display it
		puts "(#{top_seed.rank}) has a bye."
	end

	# Now loop through the rest of the teams getting the 
	# first and last in the array to pair up
	while sorted_teams.size > 0
		home_team = sorted_teams.shift	# Let's give the higher rank home court advantage
		visitor_team = sorted_teams.pop
		puts "(#{home_team.rank}) #{home_team.name} vs (#{visitor_team.rank}) #{visitor_team.name}"
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
		puts "Seeds:"
		list_teams
	when 3
		puts "Matchups:"
		seed_tournament
	when 0
		break
	else
		puts "I don't understand"
	end

end
