

# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Peter Debelak
# 2) Kim Girard

 # This is the file you should end up editing. 
=begin 
  def bakery_num(num_of_people, fav_food) # method takes number of people and favorite food as arguments
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # hash called my_list that has foods as keys and number of people as values
    pie_qty = 0 # variable for the quantity of each of the foods we're looking at, all starting at zero
    cake_qty = 0
    cookie_qty = 0
    
    unless my_list.include?(fav_food)
      raise ArgumentError.new("You can't make that food")
    end
    
  =begin
    has_fave = false # set has_fave variable to false 

    my_list.each_key do |k| # cycle through each food listed above 
      if k == fav_food # asking if that food is equal to fave_food
        has_fave = true # then set variable has_fave to true
        fav_food = k # does nothing because k is already equal to fav_food
      end # ends the if loop
    end # ends .each_key loop
    if has_fave == false # if the variable has_fave equals false
      raise ArgumentError.new("You can't make that food") # then you don't know how to make your favorite food
    else # otherwise
  =end
  #    fav_food_qty = my_list.values_at(fav_food)[0] # sets fav_food_qty equal to the value of that fav_food; uses [0] because this code returns an array, and we want the first value
  #  if num_of_people % fav_food_qty == 0 # if num_of_people divided by the fav_food_qty has no remainder
    if num_of_people % my_list[fav_food] == 0    
      num_of_food = num_of_people / my_list[fav_food] # then num_of_food equals the number of people divided by the quantity
      return "You need to make #{num_of_food} #{fav_food}(s)." # return string indicating number of favorite food items required
    else  # otherwise if there is a remainder (only the else is necessary here)
      


  #    while num_of_people > 0 # while number of people is greater than zero
  #        if num_of_people / my_list["pie"] > 0 # if number of people divided by the quantity of people associated with pie is greater than 0
              pie_qty = num_of_people / my_list["pie"] # then pie_qty equals num_of_people divided by the number of people associated with pid in my list
              num_of_people = num_of_people % my_list["pie"] # num_of_people now equals remainder of people associated with pie in my_list
  #        elsif num_of_people / my_list["cake"] > 0 # same as above but with cake
              cake_qty = num_of_people / my_list["cake"]
              num_of_people = num_of_people % my_list["cake"]
  #        else # same as above but with cookies
              cookie_qty = num_of_people # sets cookie_qty equal to the remaining num_of_people
   #           num_of_people = 0 # num_of_people now equals zero
  #        end # end if statement
  #    end # ends while statement
          return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # returns string stating number of cakes, pies, and cookies to make
    end # ends if statement from Line 34
   # end # ends if statement from line 30
  end # ends the method
=end

def bakery_num(num_of_people, fav_food)
  serving_sizes = {"pie" => 8, "cake" => 6, "cookie" => 1}
  
  unless serving_sizes.include?(fav_food)
    raise ArgumentError.new("You can't make that food")
  end

  num_of_food = num_of_people / serving_sizes[fav_food]
  remaining_num_of_people = num_of_people % serving_sizes[fav_food]

  if remaining_num_of_people == 0
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else
    baking_amounts = Hash.new
    baking_amounts = {"pie" => 0, "cake" => 0, "cookie" => 0}

    baking_amounts[fav_food] = num_of_food

    # there will never be the need for a 'remainder' pie
    cake_qty = remaining_num_of_people / serving_sizes["cake"]
    remaining_num_of_people = remaining_num_of_people % serving_sizes["cake"]
    cookie_qty = remaining_num_of_people 

    baking_amounts["cake"] = baking_amounts["cake"] + cake_qty
    baking_amounts["cookie"] = baking_amounts["cookie"] + cookie_qty
  
    return "You need to make #{baking_amounts["pie"]} pie(s), #{baking_amounts["cake"]} cake(s), and #{baking_amounts["cookie"]} cookie(s)." 
  end
end


#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 