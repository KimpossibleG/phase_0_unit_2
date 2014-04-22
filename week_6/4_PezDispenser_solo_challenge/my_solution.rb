# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
Within class PezDispenser
	DEFINE method called initialize that takes one argument: flavors
		SET @flavors equal to flavors
	end method

	DEFINE method called pez_count
		CALL #length on @flavors
	end method

	DEFINE method called see_all_pez
		CALL #join on @flavors with a comma and space as separators
	end method

	DEFINE method called add_pez that takes flavor as an argument
		SET @flavor equal to flavor
		PUSH @flavor into @flavors
	end method

	DEFINE get_pez
		CALL #delete_at with index 0 on @flavors
		CONVERT to string
	end method
	
=end


# 3. Initial Solution

class PezDispenser
	def initialize(flavors) # flavors is an array of strings representing various flavors
		@flavors = flavors
	end

	def pez_count
		@flavors.length
	end

	def see_all_pez
		@flavors.join(", ")
	end

	def add_pez(flavor) # flavor is a string representing the pez flavor being added
		@flavor = flavor
		# assume that the new flavor is being added at the bottom of the dispenser i.e. last piece
		@flavors << @flavor
	end

	def get_pez
		@flavors.delete_at(0).to_s
	end

end
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end 

# line below creates an array called flavors with the words as string elements in random order
# commented it out for testing purposes
# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
flavors = ["grape", "raspberry", "lemon", "cherry", "chocolate", "strawberry", "orange", "peppermint", "cola"]
super_mario = PezDispenser.new(flavors)
assert { "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!" == "A new pez dispenser has been created. You have 9 pez!"}

# puts "Here's a look inside the dispenser:" 
assert { super_mario.see_all_pez == "grape, raspberry, lemon, cherry, chocolate, strawberry, orange, peppermint, cola"}
# puts "Adding a purple pez."
assert { super_mario.add_pez("purple") == ["grape", "raspberry", "lemon", "cherry", "chocolate", "strawberry", "orange", "peppermint", "cola", "purple"] }
assert { "Now you have #{super_mario.pez_count} pez!" == "Now you have 10 pez!" }
# puts "Oh, you want one do you?"
assert { "The pez flavor you got is: #{super_mario.get_pez}" == "The pez flavor you got is: grape" }
assert { "Now you have #{super_mario.pez_count} pez!" == "Now you have 9 pez!" }




# 5. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
Everything went fairly smoothly this time.

What questions did you have while coding? What resources did you find to help you answer them?
Googled a couple of quick things on ruby-doc.org

What concepts are you having trouble with, or did you just figure something out? If so, what?
I struggle with writing all of the test code first before digging into the code first.

Did you learn any new skills or tricks?
n/a

How confident are you with each of the Learning Competencies?
Feeling fairly confident -- again, just not entirely solid writing each portion (test, pseudo, etc) linearly

Which parts of the challenge did you enjoy?
Found this exercise enjoyable because it was more about figuring out how to solve the problem than sturggling to remember each bit of syntax

Which parts of the challenge did you find tedious?
n/a
	
=end