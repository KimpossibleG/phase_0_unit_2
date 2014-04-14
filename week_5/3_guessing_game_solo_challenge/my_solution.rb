
# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: an integer (last_guess) into #guess
# Output: :low, :high, or :correct, depending on the last_guess and answer. Also, #solved should be true when solved.
# Steps:
# INITIALIZE GuessingGame with instance variables for answer, last_guess, last_result, and solved

# CREATE a method called guess that takes last_guess as an argument
# CREATE an instance variable of last_guess
# SET @solved equal to false
# IF last_guess is less than answer
	# set last_result equal to :low
# ELSIF last_guess is greater than answer
	# SET last_result equal to :high
# ELSIF last_guess is equal to answer
	# SET solved equal to true
	# SET last_result equal to :correct
	# RETURN last result

# CREATE a method called solved? that takes no arguments
# RETURN solved



# 3. Initial Solution

class GuessingGame1
	def initialize(answer)
    	@answer = answer
    	@last_guess = nil
    	@last_result = nil
    	@solved = false
  	end
  
	def guess(last_guess)
		@last_guess = last_guess
		@solved = false
		if @last_guess < @answer
			@last_result = :low
		elsif @last_guess > @answer
			@last_result = :high
#		elsif @last_guess.is_i == false
#			raise ArgumentError.new("You may only enter integers.")
		elsif @last_guess == @answer
			@solved = true			
			@last_result = :correct
			return @last_result
		end
	end

#	def gimme_answer
#		puts @answer
#	end

	def solved?
		return @solved
	end

end




# 4. Refactored Solution

class GuessingGame
	def initialize(answer)
    	@answer = answer
    	@solved = false
  	end
  
	def guess(last_guess)
		@last_guess = last_guess
		@solved = false
		if @last_guess < @answer
			@last_result = :low
		elsif @last_guess > @answer
			@last_result = :high
		elsif @last_guess == @answer
			@solved = true			
			@last_result = :correct
		end
	end

	def solved?
		return @solved
	end

end

game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"


# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(43)
puts game.guess(0) == :low
puts game.guess(100) == :high
puts game.solved? == false
puts game.guess(43) == :correct
puts game.solved? == true





# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I was clear on defining a class and creating the methods. I had some issues with where it was
best to initialize each of the different variables.

What questions did you have while coding? What resources did you find to help you answer them?
I didn't need to go external this time. :-)

What concepts are you having trouble with, or did you just figure something out? If so, what?
n/a

Did you learn any new skills or tricks?
I wasn't familiar with the :symbols before, but found them pretty straightforward.

How confident are you with each of the learning objectives?
Quite confident.

Which parts of the challenge did you enjoy?
I enjoyed creating the class.

Which parts of the challenge did you find tedious?
None.
	
=end
