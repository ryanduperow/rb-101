# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both
# square meters and square feet.

SQMETERS_TO_SQFEET = 10.7639

puts "Welcome to the Room Calculator 3000"

puts "=> Please Enter the length of the room in meters:"
length = gets.to_f

puts "=> Great, now enter the width of your room in meters:"
width = gets.to_f

square_meters = (length * width).round(2)

square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."