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
end

dog = Puppy.new 
dog.fetch("ball")
dog.speak(3)
dog.roll_over
dog.dog_years(3)
dog.play_dead