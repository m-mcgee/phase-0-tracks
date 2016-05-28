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

	vampire = "results inconclusive"
	allergies = []

	if age == 2016 - year_born && (garlic == "yes" || insurance == "yes")
		vampire = "Probably not a vampire"
	end
	if age != 2016 - year_born && (garlic == "no" || insurance == "no")
		vampire = "Probably a vampire"
	end
	if age != 2016 - year_born && (garlic == "no" && insurance == "no")
		vampire = "Almost certainly a vampire."
	end
	puts "Please enter any allergies you have one at a time. Enter 'done' when finished"
	until allergies.include?("done") 
			puts "What are you allergic to?"
			allergies = allergies.push(gets.chomp)
		if allergies.include?("sunshine")
			vampire = "Probably a vampire"
			break
		end
	end
	if name == "drake cula" || name == "tu fang"
		vampire = "Definitely a vampire"
	end
	puts vampire
end

while i < num 
	vampire_check
	i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
