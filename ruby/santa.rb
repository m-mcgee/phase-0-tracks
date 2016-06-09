# when you tell Santa to speak print "Ho, ho, ho! Haaaappy holidays!" 
# when Santa eats a cookie print "That was a good (type of cookie here)!" 
# intialize method to print "Initializing Santa instance ..."
# 	allow Santa to have a gender defined 
#   allow Santa to have ethnicity defined
#   give Santa a default list of his favorite reindeers
#   give Santa a default age of 0

class Santa 
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
end

santa_1 = Santa.new("male")
santa_1.speak
santa_1.eat_milk_and_cookies("chocolate chip")