# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [with: Sebastian Belmar]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps(state)
  puts "#{state} REPRESENTATIVES"
  reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state.to_s}'")
  reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  name = $db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}")
  year = $db.execute("SELECT years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  
  name_year = name.zip(year)
  name_year.each {|name, year| puts "#{name} - #{year} years"}
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{grade_level})"
  puts $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < #{grade_level}")
end

def print_votes_by_reps 
  puts "AMOUNTS OF VOTES PER REPRESENTATIVE"
  puts $db.execute("SELECT name, count(politician_id) AS votes FROM congress_members JOIN votes ON (congress_members.id = politician_id) GROUP BY name")
end


def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

#years_in_congress
print_arizona_reps("AZ")
print_separator
print_arizona_reps("NY")
print_separator
print_arizona_reps("AK")
print_separator
print_arizona_reps("NJ")
print_separator
print_arizona_reps("FL")



print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)

print_separator
print_votes_by_reps
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma

# def voter_per_member
#   members = $db.execute("SELECT politician_id FROM votes")
#   voters = $db.execute("SELECT voter_id FROM votes")
#   mem_vot = members.zip(voter)
  
    
#   mem_vot.each do |k, v|
#     k = $db.execute("SELECT name FROM congress_members WHERE id = #{k}")
#     v = $db.execute("SELECT first_name FROM voters WHERE id = #{v}")
#   end
  
#   # SORT BY KEYS
  
#   t = [
#     {nil => 1, 10 => 2, 16 => 4, 5=> 10},
#     {nil => 9, 5 => 2, 17 => 3, 10 => 2},
#     {10 => 4, 5 => 9, 17 => 1}
#   ]
  
#   # Create hash of possible keys
#   keys = t.reduce({}) { |m, h| h.each_key { |k| m[k] = [] }; m }
  
#   # Iterate through array, for each hash, for each key, append the 
#   # value if key is in hash or zero otherwise
#   t.reduce(keys) { |m, h| m.each_key { |k| m[k] << (h[k] || 0) }; m }

#   puts keys 
  
# end

# voter_per_member

# "SELECT first_name, last_name FROM voters"

# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.

# sqlite3 gem allows Ruby programs to interface with sqlite3 databse engine. the gem
# allowed us to open database containing poll results and store it in $db variable
# as an object. execute method is used to do a databse queries and setting it to a 
# variable allows it to store all the rows inside an Array. 
