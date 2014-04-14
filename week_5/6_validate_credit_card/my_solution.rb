# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a 16-digit integer
# Output: true if card is valid, false if card is not valid, error if card is not 16 digits
# Steps:
=begin
CREATE a class CreditCard
	DEFINE a method called initialize that takes cc_number as an argument
		DEFINE @cc_number equal to cc_number
		IF @cc_number as a string does not have a length of 16
			RAISE new ArgumentError "The credit card must be 16 digits."
	
	DEFINE a method called check_card that takes no arguments
		CALL a method called double_it
		CALL a method called add_it
		CALL a method called divisible_by_ten

	declare all methods below private

	DEFINE a method called double_it with no arguments
		CONVERT @cc_number to an array
		COLLECT! a new array called cc_doubled where each even-index element is equal to double the element
			 in @cc_number and each odd-index element is equal to itself

	DEFINE a method called add_it with no arguments
		FLATTEN cc_doubled
		SPLIT cc_double
		SUM each element of cc_doubled

	DEFINE a method called divisible_by_ten
		IF the sum of cc_doubled is divided by 10 with no remainders
			RETURN true
		ELSE
			RETURN false
	
=end


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(cc_number)
		@cc_number = cc_number
		if @cc_number.to_s.length != 16
			raise ArgumentError.new("The credit card must be 16 digits.")
		end
	end

	def check_card
		cc_doubled = @cc_number.to_s.chars
		cc_doubled = cc_doubled.map.with_index { |num, i| 
			if i % 2 == 0
				num.to_i * 2
			else
				num.to_i
			end
		}
		cc_doubled.join.chars
		total_of_num = cc_doubled.inject{|sum,x| sum + x }
		if total_of_num % 10 == 0
			true
		else
			false
		end
	end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

test_cc = CreditCard.new(1234123412341234)
puts test_cc.check_card == false

test_cc2 = CreditCard.new(4010000000000000)
puts test_cc2.check_card == true

test_cc3 = CreditCard.new(1234) #=> error



# 5. Reflection 

=begin
What parts of your strategy worked? What problems did you face?
I struggled to write three separate methods and then call them under a 
single, different method. I finally went 'back to basics' and wrote all
of the code under a single method. I'm going to go back to re-factor and see
if I can break it into three for clarity.

What questions did you have while coding? What resources did you find to help you answer them?
www.ruby-doc.org has become my go-to for pretty much every ruby question I have.
I also looked at a couple of stackoverflow q&a's on this one.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I feel like there is an easier way to convert an integer into an array. This took
me longer than I think it should have to figure out at this point.

Did you learn any new skills or tricks?
This is actually the first time I have used #map!

How confident are you with each of the learning objectives?
Not feeling super confident on this one. Definitely need to refactor and review.

Which parts of the challenge did you enjoy?
Even though my pseudocode is totally out to lunch, it felt better writing it this round.

Which parts of the challenge did you find tedious?
Converting to an array. Ugh. I'm missing something!
	
=end
