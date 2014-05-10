# U3.W8-9: Numbers to English Words


# I worked on this challenge [with: Kevin K. Parjam D.].

# 2. Pseudocode
# define a method name in_words that takes a integer as a parameter (our goal will be to convert it to string)
# have dictionary (hash) of conversions 
# 	it should look something like {1=>"one", 2=>"two"}...
# create if else statement 
# 	convert integer to string to determine the number of digits it has 
# apply exceptions such as one,two,three...eleven ect 


# 3. Initial Solution

def in_words (integer)
    second_digit_hash = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    first_digit_hash = {2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
    tens_hash = {10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen" , 19=>"nineteen"}
    
    if 
        integer.to_s.size == 1
        "#{second_digit_hash[integer]}"
    elsif 
        (10...20).include?(integer)
        "#{tens_hash[integer]}"
    else
        first_digit, second_digit = integer.to_s.scan(/./).map(&:to_i) 
        "#{first_digit_hash[first_digit]} #{second_digit_hash[second_digit]}".strip 
    end
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p in_words(4)  == "four"
p in_words(17) == "seventeen"
p in_words(20) == "twenty"
p in_words(45) == "forty five"
p in_words(99) == "ninety nine"

# 5. Reflection 

# This exercise was fun revisiting hashes. This was hard exercise to make it clean since there were 
# much exceptions to the rule. I also wanted to automate first gifit hash and tens hash so we add
# -ty and -teen to appropriate strings but my partner wanted to make each hash so it is more
# consistant. We also raninto small problem because we used #chomp method which deleted our last 
# character even if when they are not empty space or any special escaped characters but we shortly
# found strip method which allows us to do it. 
