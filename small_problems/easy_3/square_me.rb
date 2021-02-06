# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that
# computes the square of its argument (the square is the result of multiplying a number by itself).

def mulitply(num1, num2)
  num1 * num2
end

def square(num)
  mulitply(num, num)
end

p square(8)
p square(33)
p square(122)