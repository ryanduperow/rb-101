# Create a method that takes two integers as arguments. The first argument is a count, 
# and the second is the first number of a sequence that your method will create. The 
# method should return an Array that contains the same number of elements as the 
# count argument, while the values of each element will be multiples of the starting 
# number.

def sequence(count, first_num)
  results = []
  index = 1

  loop do
    break if results.size >= count
    results << first_num * index
    index += 1
  end

  results
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)