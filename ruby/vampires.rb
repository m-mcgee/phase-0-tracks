puts "How many employees do you need to process?"
num = gets.chomp.to_i
i = 0

def vampire_check
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year_born = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp

	vampire = ""

	# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
	if age == 2016 - year_born && (garlic == "yes" || insurance == "yes")
		vampire = "Probably not a vampire"

	# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
	elsif age != 2016 - year_born && (garlic == "no" || insurance == "no")
		vampire = "Probably a vampire"

	# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
	elsif age != 2016 - year_born && (garlic == "no" && insurance == "no")
		vampire = "Almost certainly a vampire."

	# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
	elsif name == "Drake Cula" || name == "Tu Fang"
		vampire = "Definitely a vampire"
	else
		puts "Results inconclusive"
	end
	puts vampire
end

while i < num 
	vampire_check
	i += 1
end
