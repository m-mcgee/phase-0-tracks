#-reverse first and last name
# split name into first last into an array
# reverse the order of array 

#-change vowels to next vowel
# split each index at character
# iterate through characters
# if vowel run vowel translate
# else run consonant translate



def reverse_first_last(name)
	rev_name = name.split(" ").reverse.join(" ")
end



def vowels(letter)
	vowel_array = ["a", "e", "i", "o", "u"]
	 if ('A'..'Z').include?(letter)
	 	capitalize = true
	 	letter = letter.downcase
	 end
	if letter == vowel_array[-1]
		new_letter = vowel_array[0]
	else new_index = vowel_array.index(letter) + 1
		 new_letter = vowel_array[new_index]
	end
	if capitalize == true
		new_letter = new_letter.upcase
	end
	new_letter
end


def consonant(letter)
	con_array = ["b", "c", "d", "f", "g", "h", "j", "k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	if ('A'..'Z').include?(letter)
	 	capitalize = true
	 	letter = letter.downcase
	end
	if letter == con_array[-1]
		new_letter = con_array[0]
	else new_index = con_array.index(letter) + 1
		 new_letter = con_array[new_index]
	end
	if capitalize == true
		new_letter = new_letter.upcase
	end
	new_letter
end

def char_replace(new_name)
	char = new_name.chars
	vowel_array = ["a", "e", "i", "o", "u"]
	con_array = ["b", "c", "d", "f", "g", "h", "j", "k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	new_lett_string = ""
	i = 0
	while i < char.length
		if vowel_array.include?(char[i].downcase)
		 	char[i] = vowels(char[i])
		elsif con_array.include?(char[i].downcase)
			char[i] = consonant(char[i])
		end
		new_lett_string += char[i]
		i += 1
	end
	new_lett_string
end


agent_ids = {}
name_entry = ""
while 1 == 1
	puts "Please enter a name:"
	name_entry = gets.chomp
	if name_entry == "quit"
		break
	end
	rev_name = reverse_first_last(name_entry)
	agent_name = char_replace(rev_name)
	agent_ids[name_entry] = agent_name
end 

agent_ids.each do |key, value|
	puts "#{value} is really #{key}"
end 



