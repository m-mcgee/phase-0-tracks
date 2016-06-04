# create hash to store data
# ask user for input 
# convert input data to appropriate data type and store into value of hash
client = {}
puts "Client name: "
client[:name] = gets.chomp
puts "Client age: "
client[:age] = gets.chomp.to_i
puts "Number of children: "
client[:num_child] = gets.chomp.to_i
puts "Decor Theme: "
client[:theme] = gets.chomp
puts "Favorite color: "
client[:fav_color] = gets.chomp
puts "Does the client have a dog? (y/n)"
client[:dog]= gets.chomp.downcase
if client[:dog] == "y"
	client[:dog] = true
	puts "How many dogs does the client have: "
	client[:num_dogs] = gets.chomp.to_i
else
	client[:dog] = false
end

p client
# Print the hash back out to the screen when the designer has answered all of the questions.
# convert variables to value within hash 


 
# Give the user the opportunity to update a key, If the designer says "none", skip it.
# Print the latest version of the hash, and exit the program
