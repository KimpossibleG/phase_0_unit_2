NOTE TO KIM:
Next steps - Refactor
then create the interface







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

class GuessingGame
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






# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(43)
puts game.guess(0) == :low
puts game.guess(100) == :high
puts game.solved? == false
puts game.gimme_answer
puts game.guess(43) == :correct
puts game.solved? == true





# 5. Reflection 
