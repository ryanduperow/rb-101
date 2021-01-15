# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(numbers)
  numbers.digits.reduce(:+)
end

puts sum(336)
puts sum(101)
puts sum(9888)
puts sum(123_456_789)