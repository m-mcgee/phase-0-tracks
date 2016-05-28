#Encrypt 
#-Start at first character in string (index 0)
#Until the index reaches the end of the string
#-Increment index place by one 
#-put the new value of the variable


def encrypt(string)
	index = 0
	while index < string.length - 1
	index += 1
	p string[index]
	end 
end

puts encrypt


#Decrypt
#Start from the last character in the string
#Until we reach the first charater in the string
# Decrease index place by one
# puts the new value of the variable 

def decrypt
	string = "goodbye"
	index = string.length - 1 
	
	while index > 0
		index -= 1
		p string[index]
	end
end

puts decrypt

encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")