# Write a method that takes a number as an argument. If the argument is a positive 
# number, return the negative of that number. If the number is 0 or negative, return 
# the original number.

def negative(number)
  if number.negative? == true || number == 0
    number
  else
    -(number)
  end
end

p negative(5)
p negative(-3)
p negative(0)