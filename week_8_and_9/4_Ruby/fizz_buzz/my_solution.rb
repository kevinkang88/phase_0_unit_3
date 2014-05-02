# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode
# iterate through ary with each method and give block variable,x
#   if x % 15 == 0 
#   	 push "FizzBuzz" into final array
#   elsif x % 3 == 0
#   	 push "Fizz" into final array 
#   elsif x % 5 == 0 
#   	 push "Buzz" into final array 
#   else
#   	 push x into final array
# return fianl array 



# 3. Initial Solution

def super_fizzbuzz(ary)
  final = []
  ary.each do |num|
    if num % 15 == 0 
      final << "FizzBuzz"
    elsif num % 3 == 0 
      final << "Fizz"
    elsif num % 5 == 0 
      final << "Buzz"
    else 
      final << num 
    end  
  end
  return final 
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

def assert(test, msg, test_num)
  if test
    "#{test_num} : true"
  else 
  	raise "ERROR : #{msg}"
  end
end

puts assert((super_fizzbuzz(random_input_array(3,100)) == ["Fizz"] * 100) , 
			"returns 'Fizz' for multiples of 3",
			1)
puts assert((super_fizzbuzz(random_input_array(5,100)) == ["Buzz"] * 100) , 
			"returns 'Buzz' for multiples of 5",
			2)
puts assert((super_fizzbuzz(random_input_array(15,100)) == ["FizzBuzz"] * 100) , 
			"returns 'FizzBuzz' for multiples of 15",
			3)
puts assert((super_fizzbuzz([1,2,3]) == [1,2,'Fizz']) , 
			"works on [1,2,3]",
			4)
puts assert((super_fizzbuzz([15,5,3,1]) == ['FizzBuzz','Buzz','Fizz',1]) , 
			"works on [15,5,3,1]",
			5)



# 5. Reflection 

# I decided to use if..else statement for this exercise which turned 
# out to be a good fit. Important thing I had to remember was checking 
# for multiples of 15 before checking for either 3 or 5 because when 
# there is a number who belongs to either 3 or 5 and 15, I want it 
# to replace the number with “FizzBuzz” which corresponds to 15. This 
# was a quick exercise and I could not find other ways to refactor 
# unless I decided to modify the original array instead or assigning 
# a new variable ‘final’ to it.