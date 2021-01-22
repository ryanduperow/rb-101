# Alternate versoin

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = (1..number).inject {|sum, num| sum + num}
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = (1..number).inject {|product, num| product * num}
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end