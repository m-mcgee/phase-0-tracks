#Encrypt 
#-Start at first character in string (index 0)
#Until the index reaches the end of the string
#-Increment index place by one 
#-put the new value of the variable


def encrypt
	index = 0
	string = "hello"
	while index < string.length
	index += 1
	p string[index]
	end 
end

puts encrypt


