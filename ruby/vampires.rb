puts "How many employees do you need to process?"
num = gets.chomp.to_i
i = 0

def vampire_check
	puts "What is your name?"
	name = gets.chomp.downcase
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year_born = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp

	vampire = ""
	allergies = []

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
	elsif name == "drake cula" || name == "tu fang"
		vampire = "Definitely a vampire"
	else
		puts "Results inconclusive"
	end
	puts "Please enter any allergies you have one at a time. Enter 'done' when finished"
	#use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.
	#As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”	
	until allergies.include?("done") 
			puts "What are you allergic to?"
			allergies = allergies.push(gets.chomp)
		if allergies.include?("sunshine")
			vampire = "Probably a vampire"
			break
		end
	end
	puts vampire
end

while i < num 
	vampire_check
	i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
