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
		puts "---Player Info and Stats---"
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

player = BasketballPlayer.new("KD", "OKC Thunder", 35, 20)
# player.slam_dunk
# player.shoot
# player.pass("Westbrook")
# p player.name
# player.jersey_number = 9
# p player.jersey_number

