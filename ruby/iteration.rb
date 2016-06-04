def say_hello
	name = "steve"
	yield(name)

end

say_hello{ |name| puts "Hello #{name}"}