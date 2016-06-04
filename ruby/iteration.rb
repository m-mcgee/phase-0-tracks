def say_hello
	name = "Steve"
	yield(name)

end

say_hello{ |name| puts "Hello #{name}"}


cities = ["Austin", "Atlanta", "San Francisco", "New York City"]
famous_guitar_brands_and_type = {"Fender" => "The Strat", "Gibson" => "Les Paul", "Taylor" => "CE 10", "Martin" => "D28" }

puts "Original Data" 
p cities
p famous_guitar_brands_and_type


cities.each do |cities| 
	puts cities
	
end

famous_guitar_brands_and_type.each do |"brand", "type"|
	puts "#{brand} makes #{type} guitar!"
end

cities.map! do |cities|
	cities << "!"
end

array = [1, 2, 3, 4, 5, 6, 7]
hash = {"A" => 1, "B" => 2, "C" => 3, "D" => 4}

# answer problem 1
array.delete_if {|num| num < 3}
hash.delete_if {|letter, num| letter <= "B"}

#answer problem 2
array.keep_if {|num| num > 3}
hash.keep_if {|letter, num| letter > "B"}

#answer problem 3
array.select {|num| num > 4}
hash.select {|lett,num| num > 2}

#answer problem 4
array.drop_while {|i| i < 6}
hash.reject! { |lett, num| lett < "C" }
