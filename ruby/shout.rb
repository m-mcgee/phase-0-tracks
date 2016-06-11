# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	"Yay " + words + " :)"
#   end
# end


# p Shout.yelling_happily("Awesome")
# p Shout.yell_angrily("No")


module Shout
	def yell_angrily(words)
		words + "!!!!" + " =("
	end

	def yell_happily(words)
		"Yay " + words + " =)"
	end
	
end


class Robot
	include Shout
end

class Cheerleader
	include Shout
end

my_robot = Robot.new
p my_robot.yell_angrily("Destroy")
p my_robot.yell_happily("Pizza")

my_cheerleader = Cheerleader.new
p my_cheerleader.yell_happily("Go Team")
p my_cheerleader.yell_angrily("No, we lost")
