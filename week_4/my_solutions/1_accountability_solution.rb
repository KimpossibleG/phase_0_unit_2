# U2.W4: Accountability Group Creator


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: An array of strings

# Output: An array of three arrays, where each array contains five arrays, the first of those five arrays has five strings, and the remaining four arrays of those five arrays has four strings. Each string in the input array should appear once and only once in each of the three major arrays. The array content should be randomized.

# Note that this exercise becomes quite straighforward if we assume that the input array has 21 strings, that the group sizes should be a minimum of four, that the 'extra' cohort member will be added to the first group.

# I decided to build a method that takes three arguments instead: the array of strings (which may or may not be 21 members), the minimum size of the groups, and the number of weeks that we want to create groups for. I set the default values for the min group size to 4 and the number of weeks to three, so leaving these arguments blank will provide the solution for those basic assumptions.

=begin
	
NOTES:
- a combination method would give me all the possible combinations of a set number (4?) 
- it has a block
- .shuffle will randomize the items in the array
- .uniq or | will check for unique values

- How many groups of four are there?
- How many people are left over after the number is div by four?
- Mod 0: four per group
- Other possibilities: mod 1, mod 2, mod 3
- If the original group is fewer than four, there is only one group, and they're all in it
- If there is mod 1 - one group has 5
- If there is mod 2 - two groups have five, or one group has six
- If there is mod 3 - if three or more groups, three groups have five, 
					- if two groups, or one five one six
					- if one group, one group of seven
- The easiest way to do this is probably to do a random sort, and then cycle through, adding one person 
	to each group until they're done
- We can't guarantee that each group will be different
	- If we have an identical group, we can just do it again
=end

# Steps:
=begin
DEFINE a method create_groups that takes an array as input
DIVIDE the length of that array by the group size to determine how many groups are necessary
DEFINE an empty array called groups

SELECT a random sample strings where the size of the sample equals the group size
DEFINE that selection as new_group
PUSH new_group into groups

	
=end

fireflies = ["Ahmed Al-Bahar", "Ann Lin", "Brendan Brown", "Caleb Rugg", "Carl Krause", "Catherine Farkas", "Daniel Yoachim", "Keenan Turner", "Kim Girard", "Lana Rakhman", "Mike Daugherty", "Mikee Pourhadi", "Natalie Frecka", "Natalie McCroy", "Peter Debelak", "Rick Dsida", "Scott Silveus", "Travis Hernandez", "Tyler Keating", "Xander Glassman", "Zac Mitton"]

# 3. Initial Solution
def account_groups(cohort_name_orig, account_group_size=4, num_weeks=3)
	repeat = 0
	final_groups = Array.new
	while num_weeks - repeat > 0
		cohort_name = cohort_name_orig.dup
		num_groups = cohort_name.length/account_group_size

		i = 0
		groups = Array.new
		while i < num_groups
			new_group = cohort_name.sample(account_group_size)
			groups.push(new_group)
			cohort_name.reject!{|x| new_group.include?(x)}
			i += 1
		end
		j = 0
		while cohort_name.length > 0
			if groups.length - j <= 0
				j = 0
			end
			groups[j].push(cohort_name[0])
			cohort_name.delete(cohort_name[0])
			j += 1
		end
		repeat += 1
		final_groups.push(groups)		
	end

	return final_groups
end


# 4. Refactored Solution
def create_accountability_groups(cohort_name_array, account_group_size=4, number_of_weeks=3)
	repeat_counter = 0
	final_groups = Array.new
	while number_of_weeks - repeat_counter > 0
		cohort_name = cohort_name_array.dup
		num_groups = cohort_name.length/account_group_size

		i = 0
		groups = Array.new
		while i < num_groups
			new_group = cohort_name.sample(account_group_size)
			groups.push(new_group)
			cohort_name.reject!{|x| new_group.include?(x)}
			i += 1
		end
		j = 0
		while cohort_name.length > 0
			if groups.length - j <= 0
				j = 0
			end
			groups[j].push(cohort_name[0])
			cohort_name.delete(cohort_name[0])
			j += 1
		end
		repeat_counter += 1
		final_groups.push(groups)		
	end

	return final_groups
end


# 1. DRIVER TESTS GO BELOW THIS LINE
test_solution = create_accountability_groups(fireflies)

# will show true if the fireflies cohort of 21 has one list for each of three weeks
puts test_solution.length == 3

# each week's list should have 5 groups
puts test_solution[0].length == test_solution[1].length
puts test_solution[1].length == test_solution[2].length
puts test_solution[2].length == 5

# The first group should have five members
puts test_solution[0][0].length == 5

# The other groups should have four members
puts test_solution[0][1].length == 4
puts test_solution[0][2].length == 4
puts test_solution[0][3].length == 4
puts test_solution[0][4].length == 4

# the group sizes in the week 2 and 3 lists should have the same number of members as week 1

puts test_solution[1][0].length == 5
puts test_solution[1][1].length == 4
puts test_solution[1][2].length == 4
puts test_solution[1][3].length == 4
puts test_solution[1][4].length == 4

puts test_solution[2][0].length == 5
puts test_solution[2][1].length == 4
puts test_solution[2][2].length == 4
puts test_solution[2][3].length == 4
puts test_solution[2][4].length == 4

# cohort members should be included three times
puts test_solution[0].flatten.include?("Kim Girard")
puts test_solution[1].flatten.include?("Kim Girard")
puts test_solution[2].flatten.include?("Kim Girard")

# the full list of groups should have 21 unique members
puts test_solution.flatten.uniq.length == 21

# 5. Reflection 
=begin

It didn't occur to me until after my pairing session for the group challenge that the test drivers I write should have input specified by me. I was trying to write tests that were generic enough to determine whether the method was functioning as it should every time, and writing that code was more challenging than writing the method to create the accountability groups to begin with! I decided to skip  writing the test driver code until later on. I realize that it's the first step, but I had spent a long time on it and wasn't getting anywhere. I also felt that it would be really helpful to define what the input and output should look like before writing any driver code. I still think that, and would be curious to know if I'm missing something with that approach.

When it came time to write my pseudocode, I felt like I didn't have a solid enough picture in my head of what my code would be doing to write pseudocode according to the standard that we've been looking at. Because of that, I just wrote a bunch of notes to try to clarify to myself what I would be doing. I've included those notes above. Once I had them, I knew that I was still going to have to do some research to find existing methods (if possible) to do what I needed to do, and that I was going to have to test my plan as I went because my knowledge of Ruby isn't solid enough to confidently write pseudocode or straight code. Therefore, I jumped ahead again to writing the code so that I could test as I went.

Once I had the code I wanted, and it was working the way I wanted, I had my pairing session that showed me the light in terms of test code, so I wrote that in. Then, I went back to write pseudocode. I only got so far before I decided that writing pseudocode after writing the code was probably a waste of time.

I went through and tried to refactor my code, and ended up changing some variable names to make them clearer, but I didn't / couldn't do much else. I wrote my code as efficiently as I could, and I can't figure out how to make it better. I'm sure that someone else could look at my code and see a bunch of things that would help, and I think that that's where pairing might come in really handy.

I feel like I now have a decent handle on the objectives, so I'm moving on! :-)
	
=end




