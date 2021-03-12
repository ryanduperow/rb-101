# Write a method that takes a string argument, and returns true if all of the 
# alphabetic characters inside the string are uppercase, false otherwise. Characters 
# that are not alphabetic should be ignored.

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')