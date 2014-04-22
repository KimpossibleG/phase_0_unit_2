NOT COMPLETE

# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution

class CreditCard
	 def initialize(number)
	 	unless number.to_s.length == 16
	 		raise ArgumentError.new ("Credit card number is incorrect length")
	 	end
	 @number_array = number.to_s.split("").map!(&:to_i)
	 @double_array=[]
	 @super_sum_array=[]
	 @total=0
	 end 
	def double_every_other
		@number_array.each_with_index do |e, i|
			if (i).odd?
				@double_array<<e*2
			else
				@double_array<<e
			end
		end
	end
	def super_sum
		@double_array.each do |e|
			if e.to_s.length>1
				@super_sum_array<<e.to_s.split("")
			else
				@super_sum_array<<e
			end
		end
	@super_sum_array.flatten.map{|e| @total += e.to_i} 
	end
	def check_card
		self.double_every_other
		self.super_sum
		@total%10==0 
	end 
end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE






# Reflection 