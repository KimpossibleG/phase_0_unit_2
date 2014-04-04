# U2.W4: Cipher Challenge


# I worked on this challenge with Travis Hernandez.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message) # defining a method called north_koren_cipher with an input that is a coded message
  input = coded_message.downcase.split("") # coded_message gets put into lowercase and split into individual strings and put in an array named input
  decoded_sentence = [] # defines an empty array called decoded_sentence
  
alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
code_alphabet = alphabet.rotate(4) # this allows us to rotate the cipher as one desires
cipher = Hash[code_alphabet.zip alphabet] 

=begin
  cipher = {"e" => "a",   # This defines a hash where the keys are the letters in the input message and the values are
            "f" => "b",   # the true alphabet character that creates the cipher
            "g" => "c",   # We think that a hash is a lovely way to do this, but hard-coding the hash is extremely limiting
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
=end        
  input.each do |x| # #each is looking at each individual element (in this case, a letter) in the array input
    found_match = false  # sets the default value of found_match to false
    cipher.each_key do |y| # this goes through each key element of the cipher has and begins to execute the if else code below
      if x == y  # x is a character from input. y is a key in the cipher. This is asking if the input character equals the cipher key character that the #each_key code above is currently accessing
#        puts "I am comparing x and y. X is #{x} and Y is #{y}." # This is comparing input x and cipher key y and saying they are equal
        decoded_sentence << cipher[y] # this puts the cipher key into the array decoded_sentence at the end
        found_match = true # sets the value of found_match to true for this instance
        break  # This ends the if loop and skips the next two elsifs and ends the if loop
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # asking if x(input) is equal to a symbol
        decoded_sentence << " " # if the input character is one of those symbols, add a space to the end of the decoded_sentence array
        found_match = true # sets the value of found_match to true for this instance
        break # This ends the if loop and skips the next elsif and ends the if loop
      elsif (0..9).to_a.include?(x) # it is asking if the input x is an integer between and including 0 and 9  
        decoded_sentence << x # if so, pushes the integer to the end of the array decoded_sentence
        found_match = true # sets the value of found_match to true for this instance
        break  # ends the if loop
      end # ends the if loop
    end # ends the do loop
    if not found_match  # asking if binary variable found_match equals false
      decoded_sentence << x # if we have not already found a match for the character (letter, symbol, or number), push the actual input x to the end of decoded_sentence 
    end # ends the if not loop
  end # ends the if loop
  decoded_sentence = decoded_sentence.join("") # this joins the array with no spaces in between
 
  if decoded_sentence.match(/\d+/) # if a number of any size exists in the string decoded_sentence, continue
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #the number that was found above, substitute it with the block (turn the string number to integer then divide by 100 and replace)
  end  # ends the if loop
  return decoded_sentence # returns the string decoded_sentence after all of its changes  
end # ends the if loop

# Your Refactored Solution





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
=begin

This was an enjoyable exercise for me! Going through each line of code one-by-one and explaining it will help me with developing my pseudo-code going forward. This also helped me figure out how to write tests... I put in my own input, and then my own output, and see if it's equal. I was trying to write tests based on unknown input... no wonder it was such a struggle!

I really enjoyed pairing on this exercise, because my pair and I decided that we didn't want to spend chunks of time having one person be the driver and the other the navigator. Instead, we discussed and navigated jointly, and just verbally decided who would type at any given time. It was seamless, allowed for creativity and error-checking,
and kept us both feeling productive. I also enjoyed in this pair that we would split from our shared activity from time to time to do some research or testing, and just keep each other in the loop on what we were doing individually.

My pair had done more work with regex than I had, which was a relief, because it helped us get through the last couple of lines of code really quickly. I do realize now that I'll have to do through regexs more thoroughly on my own, but my pair's explanation was super helpful.

Feeling really comfortable with the objectives and the solutions on this one.
  
=end
 