# U2.W4: Homework Cheater


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: strings representing a title, topic, date, thesis statement, and (bonus) pronoun.
# Output: A string that includes the above input and various other generic language that could plausibly come together quasi-coherently.

# Steps:
=begin
DEFINE a method called essay_writer that takes six strings as input: title, topic, date, thesis_statement, pronoun
DEFINE essay as a string (as per the tests) and use the #{} to insert the arguments
PUTS essay
RETURN essay (for testing purposes)

=end



# 3. Initial Solution
=begin
def essay_writer1(title, topic, date, thesis_statement, pronoun)
	essay = "#{title}\n\nIt's rare to find an issue that is completely black and white, a person who is absolutely good or evil, or anything subject to perception that is entirely binary. #{topic} is no exception. #{thesis_statement} There may not be a single way to look at this, or a correct way! What does 'correct' really mean, anyway? It may have meant something different years ago! #{date} was a big year for #{topic}, the year that shite really got real. What did 'correct' mean THEN?"
	puts essay
	return essay
end
=end


# 4. Refactored Solution
class Homework
	def initialize(title, topic, date, thesis_statement, pronoun)
		@title = title
		@topic = topic
		@date = date
		@thesis_statement = thesis_statement
		@pronoun = pronoun
	end

	def create_essay
		generic_template = @title + "\n\nIt's rare to find an issue that is completely black and white, a person who is absolutely good or evil, or anything subject to perception that is entirely binary. " + @topic + " is no exception. "+ @thesis_statement + " There may not be a single way to look at this, or a correct way! What does 'correct' really mean, anyway? It may have meant something different years ago! " + @date + " was a big year for " + @topic + ", the year that shite really got real. What did 'correct' mean THEN?"
	end
end

def essay_writer(title, topic, date, thesis_statement, pronoun)
	essay = Homework.new(title, topic, date, thesis_statement, pronoun)
	puts essay.create_essay
end

essay_writer("Franklin the Turtle is an Interesting Little Fellow","The Turtle Franklin","1986","Franklin is, at best, a clever young man able to impart great lessons to our young, impressionable spawn; at worst, he is an irritating little drivel-mutt who takes way too long to learn anything at all.","male")


# 1. DRIVER TESTS GO BELOW THIS LINE
#generic_template = "#{title}\n\nIt's rare to find an issue that is completely black and white, a person who is absolutely good or evil, or anything subject to perception that is entirely binary. #{topic} is no exception. #{thesis_statement} There may not be a single way to look at this, or a correct way! What does 'correct' really mean, anyway? It may have meant something different years ago! #{date} was a big year for #{topic}, the year that shite really got real. What did 'correct' mean THEN?"

#puts essay_writer("Franklin the Turtle is an Interesting Little Fellow","The Turtle Franklin","1986","Franklin is, at best, a clever young man able to impart great lessons to our young, impressionable spawn; at worst, he is an irritating little drivel-mutt who takes way too long to learn anything at all.","male") == 

#franklin_essay = "Franklin the Turtle is an Interesting Little Fellow\n\nIt's rare to find an issue that is completely black and white, a person who is absolutely good or evil, or anything subject to perception that is entirely binary. The Turtle Franklin is no exception. Franklin is, at best, a clever young man able to impart great lessons to our young, impressionable spawn; at worst, he is an irritating little drivel-mutt who takes way too long to learn anything at all. There may not be a single way to look at this, or a correct way! What does 'correct' really mean, anyway? It may have meant something different years ago! 1986 was a big year for The Turtle Franklin, the year that shite really got real. What did 'correct' mean THEN?"

essay_writer("What's Roberto Luongo up to, anyway?", "Roberto Luongo", "1979", "With one season left on his original four-year deal with the Canucks, Luongo and agent Gilles Lupien began contract negotiations with general manager Mike Gillis in the 2009 off-season.", "male")

#luongo_essay = "What's Roberto Luongo up to, anyway?\n\nIt's rare to find an issue that is completely black and white, a person who is absolutely good or evil, or anything subject to perception that is entirely binary. Roberto Luongo is no exception. With one season left on his original four-year deal with the Canucks, Luongo and agent Gilles Lupien began contract negotiations with general manager Mike Gillis in the 2009 off-season. There may not be a single way to look at this, or a correct way! What does 'correct' really mean, anyway? It may have meant something different years ago! 1979 was a big year for Roberto Luongo, the year that shite really got real. What did 'correct' mean THEN?"

essay_writer("Julia Roberts: More Than Just a Pretty Woman", "Julia Roberts", "1990", "Roberts managed to maintain the ideal that prostitution is a difficult, unsavoury lifestyle, while also showing that a prostitute can be a princess.", "female")

#roberts_essay = "Julia Roberts: More Than Just a Pretty Woman\n\nIt's rare to find an issue that is completely black and white, a person who is absolutely good or evil, or anything subject to perception that is entirely binary. Julia Roberts is no exception. Roberts managed to maintain the ideal that prostitution is a difficult, unsavoury lifestyle, while also showing that a prostitute can be a princess. There may not be a single way to look at this, or a correct way! What does 'correct' really mean, anyway? It may have meant something different years ago! 1990 was a big year for Julia Roberts, the year that shite really got real. What did 'correct' mean THEN?"






# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
Doing this challenge the easy way was... easy. Doing in the hard way was extrememly challenging, because I insisted on building this letter by letter on my own, to make sure I really understood it. 

Did you learn any new skills or tricks?
I learned that the .initialize method is inextricably linked to the .new method. I couldn't figure out why the code inside initialize was working when I hadn't called it, and yet that wasn't the case for other methods that I built within the new class definition. Nice!

How confident are you with each of the learning objectives?
I'll want to do this a few more times before I'm solid.

Which parts of the challenge did you enjoy?
I liked how everything came together after my a-ha moment about .new and .initialize

Which parts of the challenge did you find tedious?
I didn't do the Bonus pieces. My inclination told me that they were just about while or if loops, and this has been a very hectic week for me, so I let it go, because I feel pretty good about those.

=end




