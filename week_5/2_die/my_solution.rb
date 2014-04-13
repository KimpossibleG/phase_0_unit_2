# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: an array of strings
# Output: For #sides: the number of sides. For #roll: one of the strings that was input.
# Steps:
# Within initialize, declare an instance variable @sides equal to sides
# Within sides, return the length of the sides array
# Within roll, return a sample of the sides array


# 3. Initial Solution

class Die
  def initialize(labels)
  	if labels == nil || labels == []
  		raise ArgumentError.new("Input must be an array of strings.")
	end
	@labels = labels
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end



# 4. Refactored Solution

n/a




# 1. DRIVER TESTS GO BELOW THIS LINE

test_die = Die.new(["monkey", "donkey", "turtle", "hippo"])
puts test_die.sides == 4
puts test_die.roll == "monkey" || "donkey" || "turtle" || "hippo" 




# 5. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
Everything worked as desired.

What questions did you have while coding? What resources did you find to help you answer them?
Checked ruby-docs.org to see if there was a method for validating that an object is an array.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Solid.

Did you learn any new skills or tricks?
Not this round!

How confident are you with each of the learning objectives?
Solid.

Which parts of the challenge did you enjoy?
Was a quick and relatively straightforward exercise.

Which parts of the challenge did you find tedious?
n/a
	
=end