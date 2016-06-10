# Basketball player 
#   Store player's unique name
#   Store player's jersey number
#   Store player's current points
#   Give player the ability to shoot the ball
#     Randomize whether makes the shot or not
#     IF made increase current points of player by 2
#   Give player the ability to pass the ball
#   	Pass ball to the correct team mate
#   Give player the ability to slam dunk 

class BasketballPlayer
	attr_reader :name
	attr_accessor :team, :jersey_number

	def initialize(name, team, jersey_number, current_points)
		puts "---Player Info Saved---"
		@name = name
		@team = team
		@jersey_number = jersey_number
		@points_scored = current_points
	end

	def shoot
		miss_make = rand(2)
		if miss_make == 0
			puts "#{@name} missed the shot."
		else
			two_three = rand(3)
			if two_three < 2
				puts "#{@name} made the shot!"
				@points_scored += 2
			else
				puts "#{@name} made a 3!"
				@points_scored += 3
			end
			puts "Total points: #{@points_scored}"
		end
	end

	def pass(teammate)
		puts "#{@name} passed the ball to #{teammate}"
	end

	def slam_dunk
		puts "#{@name}, with a SLAM DUNK!"
		@points_scored += 2
		puts "Total points: #{@points_scored}"
	end

end

# Driver Code
# player = BasketballPlayer.new("KD", "OKC Thunder", 35, 20)
# player.slam_dunk
# player.shoot
# player.pass("Westbrook")
# p player.name
# player.jersey_number = 9
# p player.jersey_number


# User interface
def user_interface 
	player_list = []
	puts "How many players would you like to enter?"
	num_entries = gets.chomp.to_i
	num_entries.times do
		puts "Enter the player's name:"
		player_entry = gets.chomp
		puts "What team does #{player_entry} play for?"
		team_entry = gets.chomp
		puts "Enter #{player_entry}'s jersey number:"
		jersey_entry = gets.chomp.to_i
		puts "How many points does #{player_entry} currently have?"
		points_entry = gets.chomp.to_i
		player_list << BasketballPlayer.new(player_entry, team_entry, jersey_entry, player_entry)
	end 
	player_list.each do |player|
		p player.name
	end
end

user_interface