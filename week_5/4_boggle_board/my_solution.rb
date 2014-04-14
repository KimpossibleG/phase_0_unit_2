# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

@boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# copy and use the code from the .md file for this part

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution
# n/a

# DRIVER TESTS GO BELOW THIS LINE
puts create_word(@boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
puts create_word(@boggle_board, [0,1], [0,2], [1,2]) == "rad"
puts create_word(@boggle_board, [3,0], [3,1], [2,1], [3,2], [2,2], [3,3]) == "tackle"


# Reflection 
# At first I thought that I was doing something wrong because this was so 
# straightforward and the code was already written. I think that covers all the 
# answers to the reflection questions! :)
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# DEFINE a method called get_row that takes row as an argument
# RETURN the row number specified by row

# Initial Solution
def get_row(row)
    @boggle_board[row]
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_row(1) == ["i", "o", "d", "t"]

# Reflection 
# I really struggled with getting this to work without adding an argument to input the 
# boggle_board. When I realized I could declare @boggle_board and then use it in my
# methods, I went back and changed the tests and code for Part 1 as well.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# DEFINE method get_col that takes col as an argument
# TRANSPOSE the @boggle_board
# RETURN the row equal to col from the array
# END

# Initial Solution
def get_col(col)
	trans_board = @boggle_board.transpose
	return trans_board[col]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_col(1) == ["r", "o", "c", "a"]


# Reflection 
# Spending many a minute staring at ruby_doc.org is starting to come in handy!
# I remembered seeing the #transpose method and thought it would be perfect for this.