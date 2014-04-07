# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)                 # defines a method called translate_to_cipher that takes a sentence as an argument
    alphabet = ('a'..'z').to_a                    # creates an array called alphabet of the letters a through z
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]  # creates a Hash called cipher that has a key of the alphabet and variables of the alphabet shifted by the argument (4)
    spaces = ["@", "#", "$", "%", "^", "&", "*"]  # creates an array called spaces of the arguments
    
    original_sentence = sentence.downcase         # creates an object called original_sentence that is the original sentence all in lowercase
    encoded_sentence = []                         # creates an empty array called encoded_sentence
    original_sentence.each_char do |element|      # for each character in the original_sentence, do the following...
      if cipher.include?(element)                 # if the cipher hash includes the character currently in action as a key...
        encoded_sentence << cipher[element]       # push the value associated with that key onto the end of the encoded_sentence array
      elsif element == ' '                        # otherwise, if the element in action is equal to a space
        encoded_sentence << spaces.sample         # push that element onto the end of the encoded_sentence array
      else                                        # otherwise
        encoded_sentence << element               # push the actual element onto the end of the encoded_sentence array
      end                                         # end the if the loop
     end                                          # end the do loop
    
    return encoded_sentence.join                  # return all of the elements of the encoded_sentence array as a single string
end


# Questions:
# 1. What is the .to_a method doing?
# => It translates the sentence (a string) into an array which each character as an element
# 2. How does the rotate method work? What does it work on?
# => The rotate method works on the array on which it is called, moving each element forward the number of entries specified in the argument. The elements at the end of the array get moved to the beginning.
# 3. What is `each_char` doing?
# => .each_char works the same as each, but specifies that it is to act on every character in a string (as opposed to every element of an array)
# 4. What does `sample` do?
# => .sample gives a random selection from the array that it is called on
# 5. Are there any other methods you want to understand better?
# => I took a closer look at zip, as we had used it in our solution
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# => It's way better. Way cleaner, and probably more efficient.
# 7. Is this good code? What makes it good? What makes it bad?
# => I think it's great code. It's crisp, easy to understand, and every line has a point. Totally DRY.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
# No, and it shouldn't, because the spaces will be returned as random characters from the spaces array.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
Worked great; no issues.

What questions did you have while coding? What resources did you find to help you answer them?
n/a

What concepts are you having trouble with, or did you just figure something out? If so, what?
Feeling solid on this one!

Did you learn any new skills or tricks?
Nope, I'm familiar with each these ones.

How confident are you with each of the learning objectives?
Feeling pretty confident!

Which parts of the challenge did you enjoy?
I liked it all. Felt like a jigsaw puzzle to solve.

Which parts of the challenge did you find tedious?
None. Was quick, but fun.

=end

