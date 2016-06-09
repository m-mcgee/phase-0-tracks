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

	def celebrate_birthday 
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete_if {|name| name == reindeer_name}
		@reindeer_ranking << reindeer_name
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

st_nick = Santa.new("male", "imaginary")
p st_nick
st_nick.speak
st_nick.eat_milk_and_cookies("chocolate chip")
st_nick.gender = "agender"
st_nick.celebrate_birthday
p st_nick

sandy_claws = Santa.new("bigender", "white")
p sandy_claws
sandy_claws.get_mad_at("Dasher")
sandy_claws.ethnicity
sandy_claws.age
p sandy_claws
