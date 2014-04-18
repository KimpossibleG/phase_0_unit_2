# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? (removing last item added)
		@contents.delete(item)
	end

	def dump  # what should this method return? => Should empty @contents
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		if @contents.length == 0
			puts "(nothing)"
		else
			@contents.each {|silverware| puts "- " + silverware.type }
		end
	end
end

class Silverware
	attr_reader :type

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end

	def clean
		if @clean = true
			return "The #{type} is now clean."
		else
			return "The #{type} is dirty."
		end
	end

end

knife1 = Silverware.new("knife")
fork = Silverware.new("fork")


silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(fork) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents

sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? => w/ my updates, should return "(nothing)"

silverware_drawer.add_item(fork)
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed!" unless yield
end





# 5. Reflection
=begin
I only received four errors before the code executed:
- missing end statement
- no method for #clean_silverware
- argument for #add_item when no argument required
- no method for #eat

I found the instructions for Direction 3 ("Ensure each method is working as expected. You may need to create or modify methods to make the program run properly.") really frustrating. I have to make a lot of assumptions about what's expected. For example - we have methods #open and #close. They're not called anywhere. Are they working as expected? They're not doing any work at all. Am I supposed to assume that, because the methods exist, that I should build them into the program in a way that prevents us from adding or removing items unless the drawer is open?

The BONUS SECTION was equally odd. "puts fork.clean"... I created a #clean method to make this do something, but I've no idea what we're wanting it to do, so is the code working as expected? ... As a developer, I'd be going back and asking for specs regarding what exactly the purpose of this program is before I could just throw code at it.

Am I clear on the learning objectives? I feel pretty good about debugging code based on error messages -- this is how I've been getting my code fixed since day 1. Regarding defining a method's responsibility... Is the object of the game here to decide what a method is supposed to do and then use it that way in the program?

As for the tests - We can write tests to make sure that each method is working the way that we'd like it to, or write tests to see if the program is accomplishing what it is supposed to. Here's the catch: I think we need to know the objective of both before writing tests. No? And that brings me back to whether or not I'm supposed to be making this stuff up.

Does anybody read these reflections?
	
=end 