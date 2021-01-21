# Crate a simple tip calculator

puts "=> Welcome to the Tip Calculator 300"

puts "=> What is your total bill?"
meal_bill = gets.to_f

puts "=> What is your tip percentage? (Don't be a cheapskate!)."
tip_percentage = gets.to_f / 100

tip = (meal_bill * tip_percentage).round(2)
total_bill = (meal_bill + tip).round(2)

puts "The tip is #{tip}."
puts "You total bill is #{total_bill}."
