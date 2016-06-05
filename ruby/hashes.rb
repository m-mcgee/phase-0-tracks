# create hash to store data
# ask user for input 
# convert input data to appropriate data type
# store into value of hash

client = {}

puts "Client name: "
client[:name] = gets.chomp
puts "Client age: "
client[:age] = gets.chomp.to_i
puts "Does client have children? (y/n)"
client[:children] = gets.chomp
if client[:children] == "y"
	client[:children] = true
	puts "Number of children: "
	client[:num_child] = gets.chomp.to_i
else
	client[:children] = false
end
puts "Decor Theme: "
client[:theme] = gets.chomp
puts "Favorite color: "
client[:fav_color] = gets.chomp
puts "Favorite shade of #{client[:fav_color]}: "
client[:fav_shade] = gets.chomp
puts "Does the client have a dog? (y/n)"
client[:dog]= gets.chomp.downcase
if client[:dog] == "y"
	client[:dog] = true
	puts "How many dogs does the client have: "
	client[:num_dogs] = gets.chomp.to_i
else
	client[:dog] = false
end

# Print the hash back out to the screen 
puts
p client

# Give the user the opportunity to update a key, If the designer says "none", skip it.
# else take string answer and convert to a symbol 
# use new symbol as the key to update
# use conditional to convert to correct data type
# if changing boolean value of "children" or "dogs" 
# to true: get num_child or num_dogs and add to hash
# to false: remove num_child or num_dogs from hash (as false should have no number)

puts
puts "Which key would you like to update? (Enter 'none' to exit)"
answer = gets.chomp
if answer != "none"
	puts "Please update #{answer}: "
	new_value = gets.chomp
	case answer
		when "name", "theme", "fav_color", "fav_shade"	
			client[answer.to_sym] = new_value 
		when "age", "num_child", "num_dogs"
			client[answer.to_sym] = new_value.to_i
		when "children"
			if new_value == "true"
				new_value = true
				puts "Number of children: "
				client[:num_child] = gets.chomp.to_i
			else
				new_value = false
				client.delete(:num_child)
			end
			client[answer.to_sym] = new_value
		when "dog"
			if new_value == "true"
				new_value = true
				puts "Number of dogs: "
				client[:num_dogs] = gets.chomp.to_i
			else
				new_value = false
				client.delete(:num_dogs)
			end
			client[answer.to_sym] = new_value	
	end	
	p client[answer.to_sym]
end


# Print the latest version of the hash, and exit the program
puts
p client

