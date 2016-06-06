#-reverse first and last name
# split name into first last into an array
# reverse the order of array 

#
#


def reverse_first_last(string)
	rev_name = string.split(" ").reverse
	p rev_name
end

reverse_first_last("Tim McGee")