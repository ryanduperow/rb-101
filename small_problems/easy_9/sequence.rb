# Write a method that takes an integer argument, and returns an Array of all 
# integers, in sequence, between 1 and the argument.

def sequence(number)
  result = []

  1.upto(number) do |num|
    result << num
  end
  result
end

p sequence(5)
p sequence(3)
p sequence(1)