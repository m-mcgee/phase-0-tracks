# take string
# until index < string.length
# for letter at index advance one letter in alphabet and add to encripted_string
# increase index by 1

def encrypt(str)
	enc_str = ""
	i = 0
	while i < str.length
	letter = str[i].next
		if letter == "aa"
			letter = "a"
		end
	enc_str = enc_str + letter
	i += 1
	end
	p enc_str
end

# take string
# until index < string.length
# find letter at index
# go back one letter in the alphabet and add to decrypted_string
# increase index by 1

def prev_letter_index(letter)
	abc = "abcdefghijklmnopqrstuvwxyz"
	index = abc.index(letter)
	index_2 = index - 1
end

def decrypt(string)
	index = 0
	abc = "abcdefghijklmnopqrstuvwxyz"
	answer = ""
	while index < string.length
		letter = abc[prev_letter_index(string[index])]
		index += 1
		answer = answer + letter
	end
	p answer
end

encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")

decrypt(encrypt("swordfish"))
# this "nested method" works because each method has a return value that can be passed through the next method 