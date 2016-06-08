# speak method to print "Ho, ho, ho! Haaaappy holidays!" 
# eat_milk_and_cookies method to print "That was a good <type of cookie here>!" 
# intialize method to print "Initializing Santa instance ..."

class Santa 
	def initialize 
		p "Initializing Santa instance ..."
	end
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type} cookie!"
	end
end

santa_1 = Santa.new
santa_1.speak
santa_1.eat_milk_and_cookies("chocolate chip")