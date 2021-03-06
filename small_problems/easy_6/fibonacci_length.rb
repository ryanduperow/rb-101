# Write a method that calculates and returns the index of the first Fibonacci 
# number that has the number of digits specified as an argument. 
# (The first Fibonacci number has index 1.)

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(7)
p find_fibonacci_index_by_length(12)