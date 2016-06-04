def say_hello
	name = "steve"
	yield(name)

end

say_hello{ |name| puts "Hello #{name}"}


cities = [Austin, Atlanta, San Francisco, New York City]
famous_guitar_brands_and_type = {"Fender" => "The Strat", "Gibson" => "Les Paul", "Taylor" => "CE 10", "Martin" => "D28" }