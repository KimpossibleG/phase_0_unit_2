# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  An integer representing the number of sides that a new die has
# Output: For #sides: the number of sides. For #roll: an integer between 1 and the number of sides
# Steps:
# Within initialize, declare an instance variable @sides equal to sides
# Within sides, return sides
# Within roll, return a sample between 1 and sides




# 3. Initial Solution

class Die
  def initialize(sides)
    unless sides > 0
    	raise ArgumentError.new("Input must be a positive integer.")
	end
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return rand(1..@sides)
  end
end



# 4. Refactored Solution

# n/a




# 1. DRIVER TESTS GO BELOW THIS LINE
test_die = Die.new(6)
puts test_die.sides == 6
puts test_die.roll == 1 || 2 || 3 || 4 || 5 || 6



# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I thought I'd use a #sample method, but that only works on arrays. I looked up and used a rand method instead.

What questions did you have while coding? What resources did you find to help you answer them?
Found the rand method on both stackoverflow and ruby-docs.org.

What concepts are you having trouble with, or did you just figure something out? If so, what?
n/a

Did you learn any new skills or tricks?
Found the raise ArgumentError.new stuff!

How confident are you with each of the learning objectives?
Fairly confident.

Which parts of the challenge did you enjoy?
I enjoyed that I zipped through this pretty quickly -- glad that I played with the Class class last week!

Which parts of the challenge did you find tedious?
n/a
	
=end

