# U2.W4: Separate Numbers with Commans


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: an integer
# Output: the same integer with commas in every third position starting fourth from last
# Steps: 
=begin
DEFINE a method called separate_comma that takes an integer as an argument
CALL the 'to string' (.to_s) method on the integer to convert it to a string
CALL the reverse method on the string to reverse it
FIND the length of the string
DEFINE a variable called num_of_commas equal to the length of the string divided by three
DEFINE a variable called x equal to 0
UNTIL x equals num_of_commas plus 1
	INSERT a comma into the string at index 3 plus x
	ADD 4 to x
CALL the reverse method on the string
RETURN the string

	
=end


# 3. Initial Solution

def separate_comma(input_integer)
	input_as_string = input_integer.to_s.reverse
	num_of_commas = (input_as_string.length - 1) / 3
	x = 0
	until x == num_of_commas
		input_as_string.insert(3 + (x*4) , ",")
		x += 1
	end
	return input_as_string.reverse
end


# 4. Refactored Solution


# see above





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I had a few issues with my pseudocode logic. I needed to play with the code to work them out, using
uber-casual TDD. That's how I usually code.

What questions did you have while coding? What resources did you find to help you answer them?
I spent some time on ruby-doc.org looking for helpful methods.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Feeling good with these ones.

Did you learn any new skills or tricks?
Nope!

How confident are you with each of the learning objectives?
Quite

Which parts of the challenge did you enjoy?
The pseudocode came together a lot more easily this time because I had a better handle on Ruby syntax and 
knew methods for what I wanted to do.

Which parts of the challenge did you find tedious?
None. 
	
=end



