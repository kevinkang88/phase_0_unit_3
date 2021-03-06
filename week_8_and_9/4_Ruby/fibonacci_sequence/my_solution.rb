# U3.W8-9: 


# I worked on this challenge [by myself].



# 2. Pseudocode
# calculate and find large array of fibs numbers and compare to passed in integer
# generate fibonacci number upto greater than num given 
# check if any of those numbers match num

# 3. Initial Solution

#lets say num is 90

# def is_fibonacci?(num)
#   fibs = [0,1]
#   while fibs[-1] < num ** 2 #make sure I go up to high number
#     fibs << fibs[-1] + fibs[-2]  
#   end
#   return fibs.include?(num)
# end

# REFACTORED!!!

def is_fibonacci?(num)
  fibs = [0,1]
  while num > fibonacci_array.last 
    fibs << fibs[-1] + fibs[-2]  
  end
  return fibs.include?(num)
end

#Clark helped me refactor while statement now much faster 


# 1. DRIVER TESTS GO BELOW THIS LINE
#translated rspec statements 
def assert(test,msg,test_number)
  if test
    "#{test_number}: true" 
  else
  	raise "ERROR! #{msg}"
  end
end

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

puts assert(is_fibonacci?(random_fibonacci),
	   "returns true when a integer is one number of the Fibonacci sequence",
	   1 )
puts assert(is_fibonacci?(8670007398507948658051921),
		"returns true with a large Fibonacci number",
		2 )
puts assert(is_fibonacci?(random_fibonacci + 100) == false,
		"returns false when it's not in the Fibonacci seqence",
		3 )
puts assert(is_fibonacci?(927372692193078999171) == false,
		"returns false on large non-Fibonacci numbers",
		4 )





# 5. Reflection 

# It was refreshing to jump back into these brainy Ruby exercises from Javascript.
# Nature of fibonacci sequence being cumulative, I started solving problem using 
# inject inside while loop. However, I figured out an easier way of just looping 
# until array is filled with fibonacci numbers past the argument integer. In order 
# to make sure that enough fibonacci sequence was generated I squared the argument 
# integer. This happened to be one of few parts that seemed like it could be improved 
# but I could not figure out how. Although the statement makes sure that enough numbers 
# being generated, it seems a bit inefficient in terms of speed and memory.     