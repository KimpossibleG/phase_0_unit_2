#fireflies = ["Ahmed Al-Bahar", "Ann Lin", "Brendan Brown", "Caleb Rugg", "Carl Krause", "Catherine Farkas", "Daniel Yoachim", "Keenan Turner", "Kim Girard", "Lana Rakhman", "Mike Daugherty", "Mikee Pourhadi", "Natalie Frecka", "Natalie McCroy", "Peter Debelak", "Rick Dsida", "Scott Silveus", "Travis Hernandez", "Tyler Keating", "Xander Glassman", "Zac Mitton"]

fireflies = ["Ahmed Al-Bahar", "Ann Lin", "Brendan Brown", "Caleb Rugg", "Carl Krause", "Catherine Farkas", "Daniel Yoachim", "Keenan Turner", "Kim Girard", "Lana Rakhman", "Mike Daugherty", "Mikee Pourhadi", "Natalie Frecka", "Natalie McCroy", "Peter Debelak", "Rick Dsida", "Scott Silveus", "Travis Hernandez", "Tyler Keating", "Xander Glassman", "Zac Mitton"]

# In this challenge, you are going to make a method that takes an array of names (You'll want to get the list from your Cohort page in Socrates) and outputs a list of accountability groups for three different units. You should try to get everyone into an accountability group of 4, but it's your decision how to deal with cohorts not easily divisible by four.

# Are there built-in methods to do this in Ruby?
# Will you try to avoid putting the same people together more than once?
# If I run this program three times in a row, will the program give me three different outputs? Is that good or bad?
# Should it remember past outputs or not?

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

TESTS to PASS:
- every person in the cohort is in a group - count equals length?
- no one is appears more than once - count unique equals length
- no group has fewer than four members - max length

INPUT:
- an array of strings with unknown length

OUTPUT -
- an array of unique arrays with lengths four, five, or six which contains all elements of the input with no dupications


=end

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

	return final_groups.inspect
end

puts account_groups(fireflies)

