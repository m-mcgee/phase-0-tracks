puts "How many employees do you need to process?"
num = gets.chomp.to_i

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

vampire = "results inconclusive"

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if age == 2016 - year_born && (garlic == "yes" || insurance == "yes")
	vampire = "Probably not a vampire"
end

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
if age != 2016 - year_born && (garlic == "no" || insurance == "no")
	vampire = "Probably a vampire"
end

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
if age != 2016 - year_born && (garlic == "no" && insurance == "no")
	vampire = "Almost certainly a vampire."
end
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
if name == "Drake Cula" || name == "Tu Fang"
	vampire = "Definitely a vampire"
end
puts vampire
end

for i in 1..num 
	vampire_check
end
