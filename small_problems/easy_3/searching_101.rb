# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number
# appears amongst the first 5 numbers.

numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i

puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i

puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "==> The number #{last_number} apears in #{numbers}"
else
  puts "==> The number #{last_number} does not apear in #{numbers}"
end