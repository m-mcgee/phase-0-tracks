class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(integer)
  	integer.times{puts "woof"}
  end
  def roll_over
  	puts "*rolls over*"
  end
  def dog_years(years)
  	dog_years = years * 7
  	p dog_years
  end
  def play_dead
  	puts "The dog is not moving."
  end
  def initialize
  	puts "Initializing new puppy instance ..."
  end
end

dog = Puppy.new 
dog.fetch("ball")
dog.speak(3)
dog.roll_over
dog.dog_years(3)
dog.play_dead


class Superhero
	def initialize
		puts "Initialize the Superhero ..."
	end
	def punch(int)
		int.times{puts "Pow!"}
	end
	def kick(area)
		puts "Kick in the #{area}"
	end
end


superman = Superhero.new
superman.punch(2)
superman.kick("head")

superhero_directory = []
i = 0

while i < 50
	superhero_directory[i] = Superhero.new
	i += 1
end

superhero_directory.each do |hero_at_index|
	hero_at_index.punch(2)
	hero_at_index.kick("body")
end











