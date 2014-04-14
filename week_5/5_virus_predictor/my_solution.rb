# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# WHAT THIS CODE IS DOING:
# This code is calculating how many people in a given state will be killed by this flu, according
# to the state's population, population density, region, and regional spread.

# EXPLANATION OF require_relative
# This is linking the code below to the source data in file 'state_data.rb', in the same
# folder that this code is saved in.

# WHAT IS GOING ON IN THE STATE_DATA HASH?
# STATE_DATA is a hash of hashes. The main hash has each state name as a key, and the value for each key
# is another hash containing four keys: population_density, population, region, and regional_spread.

require_relative 'state_data'

class VirusPredictor

  #initialize creates and instance variable for each argument inputted when creating a new VirusPredictor class.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #virus_effects calls two other methods: predicted_deaths and speed_of_spread. Each of these will be
  # based on the values of the hashes for which the methods are being called.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths_with_speed
  end



  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
            # private makes the below methods inaccessible outside of the instance of the object
            # that we are working wtih. This is because, if used separately, they make no sense.
            # If it were moved above the virus_effects method, we wouldn't
            # be able to call the virus_effects method on any VirusPredictor instance either, but would
            # also be restricted to the one we're already invoking.

  #predicted_deaths calculates the number of people expected to die based on the population density and
  # population of whichever state is included as an argument. It prints the beginning of the output sentence.
  def predicted_deaths_with_speed
    speed = 0.0

    case @population_density
    when @population_density >= 200
      rate = 0.4
      speed += 0.5
    when @population_density >= 150
      rate = 0.3
      speed += 1
    when @population_density >= 100
      rate = 0.2
      speed += 1.5
    when @population_density >= 50
      rate = 0.1
      speed += 2
    else 
      rate = 0.05
      speed += 2.5
    end

    puts "#{@state} will lose #{(@population * rate).floor} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end

  #speed_of_spread calculations how long it will take the virus to spread throughout the state (in months),
  # and puts the second part of the output sentence.
=begin  def speed_of_spread(population_density, state) #in months
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

    puts " and will spread across the state in #{speed} months.\n\n"

  end
=end

end

# DEFINE a method called all_state_report that takes the state_data hash as an argument
# FOR each state in the hash, call the virus_effects method

def all_state_report(state_data)
  state_data.each_key { |x|
    x = VirusPredictor.new(x, state_data[x][:population_density], state_data[x][:population], state_data[x][:region], state_data[x][:regional_spread]) 
      x.virus_effects
  }
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

all_state_report(STATE_DATA)
