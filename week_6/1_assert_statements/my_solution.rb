# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
for assert { name == "bettysue" }
	The assert method is called
	"Assertion failed!" will only be raised if the block called is false
	The block is true
	The assert method ends
	Output => nil

for assert { name == "billybob" }
	The assert method is called
	"Assertion failed!" is raised because the block called is false
	Output =>
		RuntimeError: Assertion failed! # the RuntimeError appears with specified text
		from (irb):2:in 'assert' # line 002 in IRB is where the instruction to raise 'Assertion Failed!' appears
		from (irb):7 # line 007 in IRB is where the block that was false appears		
		from /Users/kigi/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in '<main>' # I think this specifies the directory that I have ruby installed in, and the version of Ruby that I'm using. irb:12... doesn't mean anything to me...?
=end


# 3. Copy your selected challenge here

@boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# DRIVER TESTS GO BELOW THIS LINE
#puts create_word(@boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
#puts create_word(@boggle_board, [0,1], [0,2], [1,2]) == "rad"
#puts create_word(@boggle_board, [3,0], [3,1], [2,1], [3,2], [2,2], [3,3]) == "tackle"


# Initial Solution
def get_row(row)
    @boggle_board[row]
end

# DRIVER TESTS GO BELOW THIS LINE
#puts get_row(1) == ["i", "o", "d", "t"]

# Initial Solution
def get_col(col)
	trans_board = @boggle_board.transpose
	return trans_board[col]
end

# DRIVER TESTS GO BELOW THIS LINE
#puts get_col(1) == ["r", "o", "c", "a"]



# 4. Convert your driver test code from that challenge into Assert Statements

assert { create_word(@boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code" }
assert { create_word(@boggle_board, [0,1], [0,2], [1,2]) == "rad" }
assert { create_word(@boggle_board, [3,0], [3,1], [2,1], [3,2], [2,2], [3,3]) == "tackle" }
assert { get_row(1) == ["i", "o", "d", "t"] }
assert { get_col(1) == ["r", "o", "c", "a"] }


# 5. Reflection
=begin

I spent some time (well-spent!) reviewing blocks and yields, and after that, the challenge went pretty quickly. 

I think that the true value of using assert statements will be specifying what the error is when something goes wrong, as opposed to just saying that there is an Error. If it were just the latter, then True/False would suffice just fine.

As far as using blocks and yields, I'm confident on the concept and will probably use them quite comfortably with a bit more practice.


=end