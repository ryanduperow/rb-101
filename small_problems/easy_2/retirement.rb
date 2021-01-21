# Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "=> Welcome to the Retirement Calculator 3000"

puts "What is your current age?"
current_age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - current_age
retirement_year = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_to_retirement} years of work to go!"