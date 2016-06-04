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

