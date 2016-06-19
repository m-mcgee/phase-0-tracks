## my_solution.rb
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Require_relative would connect the input file to the output in order to test.
#Require links pages outside outside of the directory.
#require_relative 'state_data'

require_relative 'state_data'

class VirusPredictor
#Tells what info it will store for particular instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calling 2 methods to run on instance. 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
#Taking in density and population of state and runs conditions of attributes. Also prints results logic of state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print_num_deaths(number_of_deaths)
   
  end
  
  def print_num_deaths(number_of_deaths)
    print "#{@state} will lose #{number_of_deaths} people in this outbreak!"
  end
  
#Increases rate of virus speed the lower the density is. Then prints results of virus speed. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    print_speed(speed)
    
  end

  def print_speed(speed)
    puts " and will spread across the state in #{speed} months.\n\n"
  end  
   
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do |state, data|
  instance = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  instance.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# - You can use the old hash rocket syntax with strings or methods as a key
# - The new syntax requires you to use symbols as your key 

# What does require_relative do? How is it different from require?
# - Allows code written in a seperate file to be accessed
# - require_relative is used to access a file relative to the current file
# - require is used to access a file at a specific file location

# What are some ways to iterate through a hash?
# - you can iterate by the key, value, or by key/value pairs

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# - Because these variables were already assigned as instance variables in the initialize method
# - the variables were already accessible to the method, so the method didn't require arguments to be passed in

# What concept did you most solidify in this challenge?
# - I'm not sure I would say 'solidified', but accessing the data inside nested hash became more clear
# - lightbulb moment: I realized data structures are accessed similarly to how files are structured locally on a machine (oh, duh!)

