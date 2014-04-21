# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode

# DEFINE method initialize that takes no arguments
# CREATE an empty array
# MAP into that array four times
	# CREATE an array of four random letters
# RETURN the array


# 3. Initial Solution
class BoggleBoard
	def initialize(grid)
		@grid = grid
	end

	def create_word(*coords)
		coords.map { |coord| @grid[coord.first][coord.last]}.join("")		
	end

	def get_row(row)
    	@grid[row]
	end

	def get_col(col)
		@grid.transpose[col]
	end

	def print_rows_and_columns
		i=0
		while i <= 3
			puts get_row(i).join("")
			puts get_col(i).join("")
		i += 1
		end
	end

	def get_letter(row,col)
		@grid[row][col]
	end

	def get_diagonal(coord_1, coord_2)
		if (coord_1.first - coord_2.first).abs == 1 && (coord_1.first - coord_2.last).abs == 1
			diagonal = Array.new
			diagonal <<	get_letter(coord_1.first, coord_1.last)
			diagonal << get_letter(coord_2.first, coord_2.last)
		else 
			raise ArgumentError.new("These coordinates are not on a diagonal.")
		end
	end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# print rows and columns
boggle_board.print_rows_and_columns

=begin
	=> brae
	biet
	iodt
	roca
	eclr
	adlk
	take
	etre

Note: take is a real word
=end 

# access a single letter
puts boggle_board.get_letter(3,2)

#diagonal
puts boggle_board.get_diagonal([1,1],[0,0]).inspect


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

puts boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock"





# implement tests for each of the methods here:
puts boggle_board.get_row(1) == ["i", "o", "d", "t"]
puts boggle_board.get_col(1) == ["r", "o", "c", "a"]
puts boggle_board.get_diagonal([1,2],[2,2]) == ArgumentError

# 5. Reflection 
=begin

I'm feeling pretty good about both nested data structures and basic classes/instance variables at this point.

=end
